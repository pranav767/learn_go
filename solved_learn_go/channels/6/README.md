Range
Similar to slices and maps, channels can be ranged over.

for item := range ch {
    // item is the next value received from the channel
}

This example will receive values over the channel (blocking at each iteration if nothing new is there) and will exit only when the channel is closed.

Assignment
It's that time again, Mailio is hiring and we've been assigned to do the interview. The Fibonacci sequence is Mailio's interview problem of choice. We've been tasked with building a small toy program we can use in the interview.

Complete the concurrentFib function. It should:

Create a new channel of ints
Call fibonacci concurrently
Use a range loop to read from the channel and append the values to a slice
Return the slice




