#include <iostream>
#include <string>
#include <vector>
#include <windows.h>
#include <shellapi.h>
#include <algorithm>
#include "Game.h"
#include "DataStructures.h"

using namespace std;

// ======================================================================
// PORTABLE WINDOWS GAME LAUNCHER (WORKS FOR RELATIVE PATHS)
// ======================================================================
#include <filesystem>

void launchGame(const string& path) {
    STARTUPINFOA si{};
    PROCESS_INFORMATION pi{};
    si.cb = sizeof(si);

    // Convert relative path to full absolute path based on current folder
    string fullPath = path;
    if (fullPath.rfind("./", 0) == 0) {
        fullPath = std::filesystem::current_path().string() + "\\" + fullPath.substr(2);
    }

    // FIX: Determine proper working directory!
    string workingDir = fullPath.substr(0, fullPath.find_last_of("/\\"));

    // Build final command (must use cmd to run BAT)
    string command = "cmd.exe /c \"" + fullPath + "\"";

    if (!CreateProcessA(
        NULL,
        command.data(),       // <--- launching .bat correctly
        NULL,
        NULL,
        FALSE,
        CREATE_NO_WINDOW,     // don't open extra cmd window
        NULL,
        workingDir.c_str(),   // <--- MOST IMPORTANT FIX
        &si,
        &pi
    )) {
        cout << "ERROR launching: " << fullPath << endl;
    } else {
        CloseHandle(pi.hProcess);
        CloseHandle(pi.hThread);
    }
}

void sortByNewest(vector<Game>& games) {
    vector<pair<int,int>> temp;  
    for (int i = 0; i < games.size(); i++) {
        temp.push_back({games[i].year, i});
    }

    // sort newest first
    sort(temp.begin(), temp.end(), [](auto& a, auto& b) {
        return a.first > b.first;
    });

    cout << "\nGames (newest to oldest):\n";
    for (auto& p : temp) {
        cout << games[p.second].year << " - "
             << games[p.second].title 
             << " (" << games[p.second].genre << ")\n";
    }
}

void sortByOldest(vector<Game>& games) {
    vector<pair<int,int>> temp;
    for (int i = 0; i < games.size(); i++) {
        temp.push_back({games[i].year, i});
    }

    // sort oldest first
    sort(temp.begin(), temp.end(), [](auto& a, auto& b) {
        return a.first < b.first;
    });

    cout << "\nGames (oldest to newest):\n";
    for (auto& p : temp) {
        cout << games[p.second].year << " - "
             << games[p.second].title 
             << " (" << games[p.second].genre << ")\n";
    }
}


int main() {
    vector<Game> games;

    games.push_back(Game(
        "SuperTux",
        "./Games/SuperTux/bin/supertux2.exe",
        2003,
        "Platformer"
    ));
    games.push_back(Game(
    "AssaultCube",
    "./Games/AssaultCube/assaultcube_portable.bat",
    2006,
    "Shooter"
));
games.push_back(Game(
    "DustRacing2d",
    "./Games/dustracing2d/dustrac-game.exe",
    2012,
    "Racing"
));
    games.push_back(Game(
        "pacman",
        "./Games/pacman/pacman.exe",
        1980,
        "Puzzle"
    ));
    games.push_back(Game(
        "SCP Containment Breach",
        "./Games/SCP/SCP - Containment Breach.exe",
        2012,
        "Horror"
    ));
    games.push_back(Game(
        "DBZ vs Naruto",
        "./Games/DBZ vs Naruto/DBZ vs Naruto.exe",
        2003,
        "Action"
    ));
    games.push_back(Game(
        "CatMario",
        "./Games/CatMario/CatMario.exe",
        2007,
        "Platformer"
    ));

    stack<string> history;
    queue<string> installQueue;
    BST bst;
    Graph graph;

    for (int i = 0; i < games.size(); i++)
        bst.root = bst.insert(bst.root, games[i].title, i);

    while (true) {
        cout << "\n=========== RETRO GAME LAUNCHER ===========\n";
        cout << "1. View all games\n";
        cout << "2. Launch a game\n";
        cout << "3. Search for a game\n";
        cout << "4. Sort A-Z\n";
        cout << "5. Recommendations\n";
        cout << "6. Play history\n";
        cout << "7. Sort newest to oldest\n";
        cout << "8. Sort oldest to newest\n";
        cout << "0. Exit\n";
        cout << "Choose: ";

        int choice;
        cin >> choice;

        if (choice == 0) break;

        else if (choice == 1) {
            for (int i = 0; i < games.size(); i++)
                cout << i << ". " << games[i].title << " (" << games[i].genre << ")\n";
        }

        else if (choice == 2) {
            int idx;
            cout << "Select game index: ";
            cin >> idx;

            if (idx >= 0 && idx < games.size()) {
                cout << "\nLaunching: " << games[idx].path << "\n";
                launchGame(games[idx].path);
                history.push(games[idx].title);
            } else {
                cout << "Invalid index.\n";
            }
        }
        
        else if (choice == 3) {
            string t;
            cout << "Enter title: ";
            cin >> t;

            bool found = false;
            for (int i = 0; i < games.size(); i++) {
                if (games[i].title == t) {
                    cout << "Press 2 to launch, then press " << i << ": "
                         << games[i].title
                         << " (" << games[i].genre << ")\n";
                    found = true;
                }
            }
            if (!found)
                cout << "Not found.\n";
        }

        else if (choice == 4) {
            cout << "\nSorted game titles:\n";
            bst.inorder(bst.root);
        }

        else if (choice == 5) {
            string t;
            cout << "Enter game title: ";
            cin >> t;
            graph.showRelated(t);
        }

        else if (choice == 6) {
            if (history.empty()) cout << "History empty.\n";
            else {
                cout << "\nRecent played:\n";
                stack<string> temp = history;
                while (!temp.empty()) {
                    cout << temp.top() << "\n";
                    temp.pop();
                }
            }
        }

        else if (choice == 7) {
            sortByNewest(games);
        }
        else if (choice == 8) {
            sortByOldest(games);
        }
        else {
            cout << "Invalid choice.\n";
        }
    }
    
    return 0;
}
