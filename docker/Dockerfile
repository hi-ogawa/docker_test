FROM hiogawa/rails:v0
MAINTAINER Hiroshi Ogawa <hi.ogawa.zz@gmail.com>
ADD ../railsApp /code
WORKDIR /code
RUN export PATH="$HOME/.rbenv/bin:$PATH" && \
    eval "$(rbenv init -)"               && \
    rbenv rehash                         && \
    bundle install                       && \
    rbenv rehash                         && \
    rake db:migrate
CMD export PATH="$HOME/.rbenv/bin:$PATH" && \
    eval "$(rbenv init -)"               && \
    rails s -p 80