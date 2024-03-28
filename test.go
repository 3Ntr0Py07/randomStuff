package main

import (
	"fmt"
	"time"
)

func main() {
	var times []float64

	for i := 0; i < 100; i++ {
		start := time.Now()
		for j := 0; j < 1000000000; j++ {
			//do nothing
		}
		end := time.Now()
		elapsed := end.Sub(start)
		times = append(times, float64(elapsed.Nanoseconds()))
	}

	var average float64
	for _, time := range times {
		average += time
	}
	average /= float64(len(times))
	fmt.Printf("Average time: %f\n", average)

	median := times[len(times)/2]
	fmt.Printf("Median time: %f\n", median)
}
