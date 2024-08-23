mkdir -p $PREFIX/bin
cd $SRC_DIR
# we must use go build instead of go install or cross-compiled builds
# will fail
# https://github.com/golang/go/issues/57485
go build -v -o $PREFIX/bin/s5cmd
