//
// Created by valik on 29.09.2019.
//
#include "random.h"

RandomNumberGenerator::RandomNumberGenerator() {
    std::random_device randomDevice;
    rd.seed(randomDevice());
}
int RandomNumberGenerator::getRandomInteger(int from, int to) {
    std::uniform_int_distribution<int> range(from, to);
    return range(rd);
}

