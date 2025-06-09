Custom Package Continued
Let's use our new mystrings package in hellogo.

Assignment
Modify hellogo's main.go file with the below code. Don't forget to replace {REMOTE} and {USERNAME} with the values you used before.
package main

import (
	"fmt"

	"{REMOTE}/{USERNAME}/mystrings"
)

func main() {
	fmt.Println(mystrings.Reverse("hello world"))
}

Edit hellogo's go.mod file to contain the following to import the local version of the mystrings dependency:
module example.com/username/hellogo

go 1.23.0

replace example.com/username/mystrings v0.0.0 => ../mystrings

require (
	example.com/username/mystrings v0.0.0
)

File Directory
![alt text](image.png)
../mystrings tells go to look in the parent directory of hellogo for the mystrings sibling directory.

Build and run the new program:
go build
./hellogo

Run and submit the CLI tests from the root of the main package.





