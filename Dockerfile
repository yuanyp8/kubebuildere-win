FROM golang:1.22.5-alpine3.20

RUN apk --no-cache add make
RUN apk --no-cache add bash
RUN apk --no-cache add shadow
RUN mkdir /home1

# https://book.kubebuilder.io/quick-start
RUN wget --output-document=kubebuilder https://go.kubebuilder.io/dl/latest/$(go env GOOS)'/'$(go env GOARCH) \
     && chmod +x kubebuilder \
     && mv kubebuilder /usr/local/bin/


WORKDIR /home1
