# qmstr-container
Container to run the qmstr

## Build the containers
`./build.sh`

Will result in qmstr/master & qmstr/dev

## Run the qmstr master for production (not there yet)
`docker run -p 50051:50051 -v <build_path>:/buildroot qmstr/master`

## Run master for development
`docker run --rm -p 50051:50051 -p 8081:8081 -p 8080:8080 -v $(pwd):/go/src/github.com/QMSTR/qmstr -v <build_path>:/buildroot qmstr/dev`

Assuming pwd is qmstr src dir