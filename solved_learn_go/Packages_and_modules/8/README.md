Go Build
The go build command compiles go code into a single, statically linked executable program. One of the beauties of Go is that you always go build for production, and because the output is a statically compiled binary, you can ship it to production or end users without them needing the Go toolchain installed.

Some new Go devs use go run on a server in production, which is a huge mistake.

Assignment
Ensure you are in your hellogo repo, then run:
go build

Run the new program:
./hellogo

Run and submit the CLI tests from the root of the repo.