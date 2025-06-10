Go Run
The go run command quickly compiles and runs a Go package. The compiled binary is not saved in your working directory.

I typically use go run to do local testing, scripting and debugging.

Assignment
Inside hellogo, create a new file called main.go.
Conventionally, the file in the main package that contains the main() function is called main.go.

Paste the following code into your file:
package main

import "fmt"

func main() {
	fmt.Println("hello world")
}

Run the code
go run main.go

Run and submit the CLI tests from the root of the main package.

Tips
You can execute go help run in your shell to rtfm.





