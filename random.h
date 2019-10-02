#include <random>

#ifndef LAB1_RANDOM_H
#define LAB1_RANDOM_H

class RandomNumberGenerator {
private:
    std::mt19937 rd;
public:
    RandomNumberGenerator();

    int getRandomInteger(int from, int to);
};

#endif //LAB1_RANDOM_H


