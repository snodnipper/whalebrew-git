FROM alpine
RUN apk add --no-cache git 
LABEL io.whalebrew.name git 
LABEL io.whalebrew.config.volumes '["~/.gitconfig:/root/.gitconfig", "~/.ssh/id_rsa:/root/id_rsa"]'
ENTRYPOINT ["git"]
