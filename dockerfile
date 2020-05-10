FROM golang:1.14.2-buster



COPY . /app/src/github.com/flike/kingshard
ENV GO111MODULE=on

WORKDIR /app/src/github.com/flike/kingshard



RUN bash -c 'export GO111MODULE=on && source ./dev.sh && make && cp ./bin/kingshard /usr/local/bin/'

COPY etc/ks.yaml /etc/ks.yaml

CMD ["kingshard", "-config=/etc/ks.yaml"]


