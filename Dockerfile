FROM alpine
RUN apk add --no-cache openssh-client \
    && apk add --no-cache git
LABEL io.whalebrew.name git 
LABEL io.whalebrew.config.volumes '["~/.gitconfig:/root/.gitconfig", "~/.ssh:/root/.ssh"]'
ENTRYPOINT ["git"]
