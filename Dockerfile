FROM hiogawa/rails:v0
MAINTAINER Hiroshi Ogawa <hi.ogawa.zz@gmail.com>
COPY ./railsApp /code
WORKDIR /code
RUN export PATH="$HOME/.rbenv/bin:$PATH" && eval "$(rbenv init -)" && \
    rbenv rehash                         && \
    bundle install                       && \
    rbenv rehash
