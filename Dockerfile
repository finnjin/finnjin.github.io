FROM ruby:alpine 

RUN apk add --update build-base
RUN gem install jekyll