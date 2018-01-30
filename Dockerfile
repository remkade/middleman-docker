FROM alpine:latest
ENV HOME /srv
WORKDIR /srv

RUN apk add --update --no-cache \
	curl \
	make \
	gcc \
	g++ \
	linux-headers \
	binutils-gold \
	gnupg \
	file \ 
	libstdc++

RUN apk add --no-cache ruby \
	ruby-rake \
	ruby-json \
	ruby-minitest \
	ruby-dev \
	ruby-libs \
	ruby-io-console \
	libxml2 \
	libxml2-dev \
	libffi \
	libffi-dev

RUN apk add --no-cache nodejs \
	nodejs-dev \
	nodejs-npm && \
	npm -g config set user root && \
	npm install npm@latest -g

RUN npm install elm elm-live -g --quiet --no-progress

RUN gem install --no-document bundler rake middleman

RUN npm cache clean --force
