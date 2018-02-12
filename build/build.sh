#!/bin/bash
cd $GOPATH/src/github.com/QMSTR/qmstr
dep ensure
cd cmd
go generate qmstr-master

go install qmstr-master
go install qmstr-wrapper
go install qmstr-cli
