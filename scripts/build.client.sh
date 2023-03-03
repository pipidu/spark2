export GO111MODULE=auto
export COMMIT=`git rev-parse HEAD`



export GOOS=windows

export GOARCH=amd64
go build -ldflags "-X 'Spark/client/config.COMMIT=$COMMIT'" -o ./built/windows_amd64 Spark/client



# export GOOS=android
# export CGO_ENABLED=1

# export GOARCH=arm
# export CC=armv7a-linux-androideabi21-clang
# export CXX=armv7a-linux-androideabi21-clang++
# go build -ldflags "-s -w -X 'Spark/client/config.COMMIT=$COMMIT'" -o ./built/android_arm Spark/client

# export GOARCH=386
# export CC=i686-linux-android21-clang
# export CXX=i686-linux-android21-clang++
# go build -ldflags "-s -w -X 'Spark/client/config.COMMIT=$COMMIT'" -o ./built/android_i386 Spark/client

# export GOARCH=arm64
# export CC=aarch64-linux-android21-clang
# export CXX=aarch64-linux-android21-clang++
# go build -ldflags "-s -w -X 'Spark/client/config.COMMIT=$COMMIT'" -o ./built/android_arm64 Spark/client

# export GOARCH=amd64
# export CC=x86_64-linux-android21-clang
# export CXX=x86_64-linux-android21-clang++
# go build -ldflags "-s -w -X 'Spark/client/config.COMMIT=$COMMIT'" -o ./built/android_amd64 Spark/client
