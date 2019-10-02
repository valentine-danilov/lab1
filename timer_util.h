//
// Created by valik on 29.09.2019.
//

#ifndef LAB1_TIMER_UTIL_H
#define LAB1_TIMER_UTIL_H

#include <chrono>

using namespace std::chrono;

class TimerUtil {
public:

    static void start();

    static void end();

    static void print();

    static double getTimeInMillis();
};

#endif //LAB1_TIMER_UTIL_H
