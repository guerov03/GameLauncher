# RetroLauncher — C++ Game Launcher (Data Structures Project)

RetroLauncher is a lightweight C++ game launcher that uses an internal HTTP server to display a simple browser-based UI.  
The goal of the project is to demonstrate mastery of **core data structures** while building a functional real-world-style application.

This project includes:

- **Binary Search Tree (BST)** for alphabetical sorting  
- **Hash Table** for prefix-based searching  
- **Graph** for game recommendations by genre  
- **Stack** for launch history  
- **Vector + custom structs** for game storage  
- **Custom HTTP handler**, HTML/CSS/JS interface, and Windows process launching

---

##  Features

###  View Game Library
All games are listed visually in the browser UI with clickable cards.

###  Launch Games (C++ → Windows Process)
Clicking a game launches its `.exe` or `.bat` using `CreateProcessA`.

###  Sorting
Implemented directly on the backend:

- A–Z Sort (BST in-order traversal)  
- Newest First  
- Oldest First  

###  Recommendations (Graph)
Games are connected by genre. Selecting a game displays all related games using adjacency lists.

###  History (Stack)
Every launched game is pushed onto a stack and can be viewed in reverse order.

---

##  Data Structures Used (for grading)

| Requirement       | Implementation |
|------------------|----------------|
| Linked structure | BST + Graph nodes |
| Tree structure   | Binary Search Tree |
| Graph structure  | Genre recommendation system |
| Hash table       | Prefix search index |
| Stack            | Launch history |
| Vector/List      | Primary game storage |

Each structure is directly used inside `main.cpp` and connected to UI actions.

---

##  How to Run

1. Download Zip file and extract
2. Open the exe
