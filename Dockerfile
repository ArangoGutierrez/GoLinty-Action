FROM golang:1.11-apline3.8
MAINTAINER Eduardo Arango <eduardo@sylabs.io>

LABEL version="1.0.0"
LABEL repository="https://github.com/ArangoGutierrez/GoLinty-Action"
LABEL maintainer="ArangoGutierrez"

LABEL com.github.actions.name="Go-Linty"
LABEL com.github.actions.description="Linty support an iterative process to clear out lints from go code"
LABEL com.github.actions.icon="activity"
LABEL com.github.actions.color="green"

RUN go get -u golang.org/x/lint/golint && \ 
	apk add --no-cache \
	bash \
	ca-certificates \
	curl \
	jq

COPY linty/action.sh /usr/bin/github_action
COPY linty/linty.sh /usr/bin/linty

ENTRYPOINT ["github_action"]
