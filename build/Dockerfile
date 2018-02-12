FROM ubuntu:17.10

ENV GOPATH /go
ENV PATH ${GOPATH}/bin:/usr/lib/go-1.9/bin:$PATH

# install golang 1.9
RUN apt-get update && \
    apt-get install -y software-properties-common && \
    add-apt-repository ppa:gophers/archive && \
    apt-get update && \
    apt-get install -y curl golang-1.9-go git protobuf-compiler && \
    rm -rf /var/lib/apt/lists/*

# install golang tools
RUN go get -u github.com/golang/protobuf/protoc-gen-go
    go get -u github.com/golang/dep/cmd/dep

COPY build.sh /build.sh
RUN chmod +x /build.sh
CMD build.sh
