#ifndef DATASTRUCTURES_H
#define DATASTRUCTURES_H

#include <iostream>
#include <vector>
#include <queue>
#include <stack>
#include <unordered_map>
#include <string>
using namespace std;

//
// ===== Simple LIST wrapper
//
class GameList {
public:
    vector<int> indices;

    void push(int i) {
        indices.push_back(i);
    }

    bool empty() {
        return indices.empty();
    }

    void print(const vector<Game>& games) {
        for (int i : indices) {
            cout << i << ". " << games[i].title << " (" << games[i].genre << ")\n";
        }
    }
};

//
// ===== BST FOR SORTING
//
struct Node {
    string key;
    int index;
    Node* left;
    Node* right;

    Node(string k, int i) : key(k), index(i), left(NULL), right(NULL) {}
};

class BST {
public:
    Node* root = NULL;

    Node* insert(Node* r, string k, int index) {
        if (!r) return new Node(k, index);
        if (k < r->key)
            r->left = insert(r->left, k, index);
        else
            r->right = insert(r->right, k, index);
        return r;
    }

    void inorder(Node* r) {
        if (!r) return;
        inorder(r->left);
        cout << r->key << "\n";
        inorder(r->right);
    }
};

//
// ===== GRAPH FOR RECOMMENDATIONS
//
class Graph {
public:
    unordered_map<string, vector<string>> edges;

    void addEdge(string a, string b) {
        edges[a].push_back(b);
        edges[b].push_back(a);
    }

    void showRelated(string game) {
        if (edges[game].empty()) {
            cout << "No recommendations available.\n";
            return;
        }
        cout << "Recommended games:\n";
        for (auto& g : edges[game]) {
            cout << " - " << g << "\n";
        }
    }
};

#endif
