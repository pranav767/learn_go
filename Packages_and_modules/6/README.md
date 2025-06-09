First Local Program
Once inside your personal workspace, create a new directory and enter it:
mkdir hellogo
cd hellogo

Inside the directory declare your module's name:
go mod init {REMOTE}/{USERNAME}/hellogo

Where {REMOTE} is your preferred remote source provider (i.e. github.com) and {USERNAME} is your Git username. If you don't use a remote provider yet, just use example.com/username/hellogo

Print your go.mod file:
cat go.mod

Run and submit the CLI tests using the Boot.dev CLI from the root of