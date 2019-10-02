//
// Created by valik on 29.09.2019.
//

#include <iostream>
#include <fstream>
#include "timer_util.h"

using namespace std::chrono;

high_resolution_clock::time_point startTime = high_resolution_clock::now();
high_resolution_clock::time_point endTime;

void TimerUtil::start() {
    startTime = high_resolution_clock::now();
}

void TimerUtil::end() {
    endTime = high_resolution_clock::now();
}

double TimerUtil::getTimeInMillis() {
    return duration_cast<milliseconds>(endTime - startTime).count() / 1000.;
}

void TimerUtil::print() {
    std::ofstream fout("out.txt");
    fout << getTimeInMillis() << std::endl;
}

