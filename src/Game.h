#ifndef GAME_H
#define GAME_H

#include <string>
using namespace std;

class Game {
public:
    string title;
    string path;
    int year;
    string genre;

    Game(string t, string p, int y, string g)
        : title(t), path(p), year(y), genre(g) {}

    Game() = default;
};

#endif
