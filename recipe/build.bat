REM Build the Go project
REM Note: We use go build instead of go install due to cross-compilation issues
REM Reference: https://github.com/golang/go/issues/57485
go build -v -o "%LIBRARY_BIN%\s5cmd.exe"
