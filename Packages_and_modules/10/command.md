Copy/paste one of the following commands into your terminal:

Run

bootdev run 2c32a5fc-6827-48f9-a033-392881ff3ca5


Submit

bootdev run 2c32a5fc-6827-48f9-a033-392881ff3ca5 -s


Run the CLI commands to test your solution.

cat go.mod
Expecting exit code: 0
Expecting stdout to contain all of:
mystrings
cat mystrings.go
Expecting exit code: 0
Expecting stdout to contain all of:
func Reverse(s string) string {
go build
Expecting exit code: 0