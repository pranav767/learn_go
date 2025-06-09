Why does the empty anonymous struct have two pairs of braces? 'struct{}{}'



1. It doesn't, it's a syntax error


2. Because the Go developers like to flex their 200 WPM typing speed


3. 'struct{}' is the type (empty struct) and '{}' is the value (empty struct literal)