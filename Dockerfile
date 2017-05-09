FROM alpine:latest

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
	nodejs-dev && \
	npm install npm@latest -g

RUN gem install --no-document bundler rake middleman
