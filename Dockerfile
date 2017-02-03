FROM alpine
RUN apk add --no-cache openssh-client \
    && ssh-keyscan github.com >> /root/.ssh/known_hosts \
    && apk add --no-cache git
LABEL io.whalebrew.name git 
LABEL io.whalebrew.config.volumes '["~/.gitconfig:/root/.gitconfig", "~/.ssh:/root/.ssh"]'
ENTRYPOINT ["git"]
