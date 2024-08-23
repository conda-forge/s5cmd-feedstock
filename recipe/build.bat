@echo off
REM Create the Scripts directory in the PREFIX path if it doesn't exist
if not exist "%PREFIX%\Scripts" mkdir "%PREFIX%\Scripts"

REM Change directory to SRC_DIR
cd %SRC_DIR%

REM Build the Go project
REM Note: We use go build instead of go install due to cross-compilation issues
REM Reference: https://github.com/golang/go/issues/57485
go build -v -o "%PREFIX%\Scripts\s5cmd.exe"
