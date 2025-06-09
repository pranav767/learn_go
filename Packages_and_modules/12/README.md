Remote Packages
Let's learn how to import and use an open-source package that's available on GitHub.

A Note on “replace”
Be aware that using the "replace" keyword like we did in the last assignment is not advised, but can be useful to get up and running quickly. The proper way to create and depend on modules is to publish them to a remote repository. When you do that, the "replace" keyword can be dropped from the go.mod:

This only works for local-only development:

replace github.com/wagslane/mystrings v0.0.0 => ../mystrings

If we want the import to work for everyone, we need to make sure the dependency (mystrings in this case) actually exists on https://github.com/wagslane/mystrings.

Assignment
Create a new directory in the same parent directory as hellogo and mystrings called datetest.
Create main.go in datetest and add the following code:
package main

import (
	"fmt"
	"time"

	tinytime "github.com/wagslane/go-tinytime"
)

func main() {
	tt := tinytime.New(1585750374)
	tt = tt.Add(time.Hour * 48)
	fmt.Println("1585750374 converted to a tinytime is:", tt)
}

Initialize a module:
go mod init {REMOTE}/{USERNAME}/datetest

Download and install the remote go-tinytime package using go get:
go get github.com/wagslane/go-tinytime

Print the contents of your go.mod file to see the changes:
cat go.mod

Compile and run your program:
go build
./datetest

Run and submit the CLI tests from the root of the datetest package.