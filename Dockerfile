FROM golang:1.13

ADD . /go/src/github.com/benzcash/zcashd_exporter

RUN go get github.com/benzcash/zcashd_exporter
RUN go install github.com/benzcash/zcashd_exporter

ENTRYPOINT ["zcashd_exporter"]
CMD ["--help"]