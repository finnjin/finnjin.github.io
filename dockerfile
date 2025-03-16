FROM ruby:alpine 

RUN apk add --update build-base
# This mounts the artifact outside the container so I can work with it interactively.”
RUN bundle config set path vendor/bundle
RUN gem install jekyll