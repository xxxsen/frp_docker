FROM golang:alpine

ARG TAGS=v0.37.1

RUN apk add --no-cache git make
RUN git clone https://github.com/fatedier/frp.git 
WORKDIR frp
RUN git checkout $TAGS
RUN make build

FROM alpine

COPY --from=0  /go/frp/bin/frp* /bin/
RUN ls -al /bin/frp*



