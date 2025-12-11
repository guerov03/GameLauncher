#include <iostream>
#include <string>
#include <vector>
#include <winsock2.h>
#include <windows.h>
#include <shellapi.h>
#include <algorithm>
#include "Game.h"
#include "DataStructures.h"
#include <unordered_map>
#include <unordered_set>
#include <fstream>
#include <filesystem>
#include <cstdlib>

using namespace std;
#pragma comment(lib, "ws2_32.lib")


void launchGame(const string& path) {
    STARTUPINFOA si{};
    PROCESS_INFORMATION pi{};
    si.cb = sizeof(si);

    string fullPath = path;
    if (fullPath.rfind("./", 0) == 0) {
        fullPath = std::filesystem::current_path().string() + "\\" + fullPath.substr(2);
    }

    string workingDir = fullPath.substr(0, fullPath.find_last_of("/\\"));
    string command = "cmd.exe /c \"" + fullPath + "\"";

    if (!CreateProcessA(NULL, command.data(), NULL, NULL, FALSE,
        CREATE_NO_WINDOW, NULL, workingDir.c_str(), &si, &pi)) 
    {
        cout << "ERROR launching: " << fullPath << endl;
    } else {
        CloseHandle(pi.hProcess);
        CloseHandle(pi.hThread);
    }
}


string httpResp(const string& body, const string& type) {
    return "HTTP/1.1 200 OK\r\nContent-Type: " + type + "\r\n\r\n" + body;
}


string urlDecode(const string& s) {
    string out;
    for (size_t i = 0; i < s.size(); ++i) {
        if (s[i] == '%' && i + 2 < s.size()) {
            string hex = s.substr(i+1,2);
            char c = (char)strtol(hex.c_str(), nullptr, 16);
            out += c;
            i += 2;
        } else if (s[i] == '+') out += ' ';
        else out += s[i];
    }
    return out;
}


int main() {

    vector<Game> games = {
        Game("SuperTux", "./Games/SuperTux/bin/supertux2.exe", 2003, "Platformer"),
        Game("AssaultCube", "./Games/AssaultCube/assaultcube_portable.bat", 2006, "Shooter"),
        Game("DustRacing2d", "./Games/dustracing2d/dustrac-game.exe", 2012, "Racing"),
        Game("pacman", "./Games/pacman/pacman.exe", 1980, "Puzzle"),
        Game("SCP Containment Breach", "./Games/SCP/SCP - Containment Breach.exe", 2012, "Horror"),
        Game("DBZ vs Naruto", "./Games/DBZ vs Naruto/DBZ vs Naruto.exe", 2003, "Action"),
        Game("CatMario", "./Games/CatMario/CatMario.exe", 2007, "Platformer")
    };

    stack<string> history;
    BST bst;
    Graph graph;
    unordered_map<string, vector<int>> hashIndex;

    // GRAPH BUILD
    for (int i = 0; i < games.size(); i++)
        for (int j = i+1; j < games.size(); j++)
            if (games[i].genre == games[j].genre)
                graph.addEdge(games[i].title, games[j].title);

    // BST BUILD
    for (int i = 0; i < games.size(); i++)
        bst.root = bst.insert(bst.root, games[i].title, i);

    // HASH PREFIX BUILD
    for (int i = 0; i < games.size(); i++) {
        string key = games[i].title;
        transform(key.begin(), key.end(), key.begin(), ::tolower);
        hashIndex[key].push_back(i);
        for (int len = 1; len <= key.length(); len++)
            hashIndex[key.substr(0,len)].push_back(i);
    }

    
    //  HTTP SERVER ----------------------------------------------
    
    WSADATA wsa;
    WSAStartup(MAKEWORD(2,2), &wsa);
    SOCKET server = socket(AF_INET, SOCK_STREAM, 0);

    sockaddr_in addr;
    addr.sin_family = AF_INET;
    addr.sin_port = htons(3000);
    addr.sin_addr.s_addr = INADDR_ANY;
    bind(server, (sockaddr*)&addr, sizeof(addr));
    listen(server, 5);
    system("start \"\" http://localhost:3000");

    while (true) {

        SOCKET client = accept(server, NULL, NULL);
        if (client == INVALID_SOCKET) continue;

        char buf[4096] = {0};
        recv(client, buf, sizeof(buf) - 1, 0);
        string req(buf);

        // Serve HTML
        if (req.find("GET / ") != string::npos) {
            ifstream f("UI/index.html", ios::binary);
            string html((istreambuf_iterator<char>(f)), istreambuf_iterator<char>());
            string resp = httpResp(html, "text/html");
            send(client, resp.c_str(), resp.size(), 0);
            closesocket(client);
            continue;
        }

        // CSS
        if (req.find("GET /style.css") != string::npos) {
            ifstream f("UI/style.css", ios::binary);
            string css((istreambuf_iterator<char>(f)), istreambuf_iterator<char>());
            string resp = httpResp(css, "text/css");
            send(client, resp.c_str(), resp.size(), 0);
            closesocket(client);
            continue;
        }

        // JS
        if (req.find("GET /script.js") != string::npos) {
            ifstream f("UI/script.js", ios::binary);
            string js((istreambuf_iterator<char>(f)), istreambuf_iterator<char>());
            string resp = httpResp(js, "application/javascript");
            send(client, resp.c_str(), resp.size(), 0);
            closesocket(client);
            continue;
        }

        
        //     /games  (JSON Full List)

        if (req.find("GET /games") != string::npos) {
            string json = "[";
            for (int i = 0; i < games.size(); i++) {
                json += "{";
                json += "\"id\":" + to_string(i);
                json += ",\"title\":\"" + games[i].title + "\"";
                json += ",\"year\":" + to_string(games[i].year);
                json += ",\"genre\":\"" + games[i].genre + "\"";
                json += ",\"path\":\"" + games[i].path + "\"";
                json += "}";
                if (i < games.size()-1) json += ",";
            }
            json += "]";
            string resp = httpResp(json, "application/json");
            send(client, resp.c_str(), resp.size(), 0);
            closesocket(client);
            continue;
        }


       
        // BST sort (A-Z) 
        
        if (req.find("GET /sortAZ") != string::npos) {

            vector<int> sortedIndexes;

            // In-order BST traversal lambda
            auto collect = [&](Node* r, auto&& collect_ref) -> void {
                if (!r) return;
                collect_ref(r->left, collect_ref);
                sortedIndexes.push_back(r->index);
                collect_ref(r->right, collect_ref);
            };

            collect(bst.root, collect);

            string json = "[";
            for (int i = 0; i < sortedIndexes.size(); i++) {
                int idx = sortedIndexes[i];
                json += "{";
                json += "\"id\":" + to_string(idx);
                json += ",\"title\":\"" + games[idx].title + "\"";
                json += ",\"year\":" + to_string(games[idx].year);
                json += ",\"genre\":\"" + games[idx].genre + "\"";
                json += ",\"path\":\"" + games[idx].path + "\"";
                json += "}";
                if (i < sortedIndexes.size()-1) json += ",";
            }
            json += "]";
            string resp = httpResp(json, "application/json");
            send(client, resp.c_str(), resp.size(), 0);
            closesocket(client);
            continue;
        }
        
        // Launch Game
        
        if (req.find("GET /launch?id=") != string::npos) {
            size_t idpos = req.find("id=");
            int id = stoi(req.substr(idpos+3));
            launchGame(games[id].path);
            history.push(games[id].title);
            string resp = httpResp("Launched\n", "text/plain");
            send(client, resp.c_str(), resp.size(), 0);
            closesocket(client);
            continue;
        }

        // History
        if (req.find("GET /history") != string::npos) {
            string body;
            if (history.empty()) body = "History empty.\n";
            else {
                auto temp = history;
                while (!temp.empty()) {
                    body += temp.top() + "\n";
                    temp.pop();
                }
            }
            string resp = httpResp(body, "text/plain");
            send(client, resp.c_str(), resp.size(), 0);
            closesocket(client);
            continue;
        }

        // recommend
        if (req.find("GET /recommend?id=") != string::npos) {
            size_t idpos = req.find("id=");
            int id = stoi(req.substr(idpos+3));

            string body;
            string title = games[id].title;

            if (graph.edges[title].empty()) {
                body = "No recommendations.\n";
            } else {
                for (auto& t : graph.edges[title])
                    body += t + "\n";
            }

            string resp = httpResp(body, "text/plain");
            send(client, resp.c_str(), resp.size(), 0);
            closesocket(client);
            continue;
        }

//Sort by Newest
if (req.find("GET /sortNewest") != string::npos) {
    string json = "[";
    vector<pair<int,int>> temp;
    for (int i = 0; i < (int)games.size(); i++)
        temp.push_back({games[i].year, i});

    sort(temp.begin(), temp.end(), [](auto& a, auto& b){
        return a.first > b.first;
    });

    for (int k = 0; k < (int)temp.size(); k++) {
        int idx = temp[k].second;
        json += "{\"id\":" + to_string(idx) +
                ",\"title\":\"" + games[idx].title +
                "\",\"year\":" + to_string(games[idx].year) +
                ",\"genre\":\"" + games[idx].genre + "\"}";
        if (k < temp.size() - 1) json += ",";
    }
    json += "]";

    string resp = httpResp(json, "application/json");
    send(client, resp.c_str(), resp.size(), 0);
    closesocket(client);
    continue;
}

// Sort by Oldest
if (req.find("GET /sortOldest") != string::npos) {
    string json = "[";
    vector<pair<int,int>> temp;
    for (int i = 0; i < (int)games.size(); i++)
        temp.push_back({games[i].year, i});

    sort(temp.begin(), temp.end(), [](auto& a, auto& b){
        return a.first < b.first;
    });

    for (int k = 0; k < (int)temp.size(); k++) {
        int idx = temp[k].second;
        json += "{\"id\":" + to_string(idx) +
                ",\"title\":\"" + games[idx].title +
                "\",\"year\":" + to_string(games[idx].year) +
                ",\"genre\":\"" + games[idx].genre + "\"}";
        if (k < temp.size() - 1) json += ",";
    }
    json += "]";

    string resp = httpResp(json, "application/json");
    send(client, resp.c_str(), resp.size(), 0);
    closesocket(client);
    continue;
}
    }

    return 0;
}
