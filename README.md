# RetroLauncher (Command-Line Version)

RetroLauncher is a C++ program that allows users to browse, search, sort, and launch games directly from the command line.  
This branch contains the original terminal-based version of the project before any browser-based UI was added.

Goal: demonstrate the use of classical data structures in a practical application

---

## Data Structures Used

The program incorporates the following data structures:

• Vector — stores the main list of all games  
• Stack — tracks the user's game launch history  
• Hash Table (unordered_map) — supports fast prefix-based searching  
• Graph (Adjacency List) — provides game recommendations based on shared genre  
• Binary Search Tree (BST) — used to sort games alphabetically  
• std::sort() - for date sorting 
• Custom Class — represents game information such as title, genre, path, and year  

Each structure contributes to a specific feature of the launcher.

---

## BETA UI

=========== RETRO GAME LAUNCHER ===========
1. View all games
2. Launch a game
3. Search for a game
4. Sort A-Z
5. Recommendations
6. Play history
7. Sort newest to oldest
8. Sort oldest to newest
0. Exit
Choose:
