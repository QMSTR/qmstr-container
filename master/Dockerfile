FROM ubuntu:17.10

ENV GOPATH /go
ENV PATH ${GOPATH}/bin:/usr/lib/go-1.9/bin:$PATH

# install golang 1.9
RUN apt-get update && \
    apt-get install -y software-properties-common && \
    add-apt-repository ppa:gophers/archive && \
    apt-get update && \
    apt-get install -y curl golang-1.9-go autoconf git libio-captureoutput-perl python python-pip protobuf-compiler && \
    rm -rf /var/lib/apt/lists/*

# install ninka
RUN mkdir /ninka && \
    git clone https://github.com/dmgerman/ninka.git /ninka && \
    cd /ninka/comments && make && make install && \
    rm /usr/local/man/man1 && \
    cd /ninka && perl Makefile.PL && make && make install && \
    rm -fr /ninka

# install scancode
RUN pip install scancode-toolkit

# install dgraph
RUN curl https://get.dgraph.io -sSf | bash

# install qmstr
RUN curl https://github.com/QMSTR/qmstr/raw/master/install.sh -sSfL | bash

EXPOSE 50051
# dgraph ratel web ui
EXPOSE 8081

COPY docker-entrypoint.sh /docker-entrypoint.sh
RUN chmod +x /docker-entrypoint.sh
ENTRYPOINT [ "/docker-entrypoint.sh" ]
