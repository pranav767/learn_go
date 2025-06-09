Go Install
The go install command compiles and installs a package or packages on your local machine for your personal usage. It installs the package's compiled binary in the GOBIN directory. (We installed the bootdev cli with it, after all)

Assignment
Ensure you are in your hellogo repo, then run:
go install

Navigate out of your project directory:
cd ../

If all went well, Go compiled and installed the hellogo program globally on your machine. Run it with:
hellogo

Run and submit the CLI tests from anywhere on your machine.

Troubleshooting
If you get an error regarding "hellogo not found" it means you probably don't have your Go environment setup properly. Specifically, go install is adding your binary to your GOBIN directory, but that may not be in your PATH.

You can read more about that here in the go install docs.