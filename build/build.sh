#!/bin/bash
(cd $GOPATH/src/github.com/QMSTR/qmstr; dep ensure)
go generate github.com/QMSTR/qmstr/cmd/qmstr-master

(cd $GOPATH/src/github.com/QMSTR/qmstr; go test ./...)

go install github.com/QMSTR/qmstr/cmd/qmstr-master
go install github.com/QMSTR/qmstr/cmd/qmstr-wrapper
go install github.com/QMSTR/qmstr/cmd/qmstr-cli
