FROM alpine:edge AS base
ENV JFROG_CLI_OFFER_CONFIG=false
RUN apk --no-cache add bash jq
ADD https://api.bintray.com/content/jfrog/jfrog-cli-go/\$latest/jfrog-cli-linux-amd64/jfrog?bt_package=jfrog-cli-linux-amd64 /bin/jfrog
COPY scripts/* /opt/resource/
RUN chmod +x /opt/resource/* /bin/jfrog
WORKDIR /opt/resource