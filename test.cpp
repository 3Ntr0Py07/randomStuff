#include <iostream>
#include <vector>
#include <chrono>

using namespace std;

int main() {
    vector<double> times = {};
    chrono::high_resolution_clock clock;

    for (int i = 0; i < 100; i++) {
        auto start = clock.now();
        for (int j = 0; j < 1000000000; j++) {
            //do nothing
        }
        auto end = clock.now();
        times.push_back(chrono::duration_cast<chrono::nanoseconds>(end - start).count());
    }

    double average = 0;
    for (double time : times) {
        average += time;
    }
    average /= times.size();
    cout << "Average time: " << average << endl;

    double median = times[times.size() / 2];
    cout << "Median time: " << median << endl;
}
