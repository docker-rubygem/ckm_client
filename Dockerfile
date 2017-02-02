FROM ruby:2.4

MAINTAINER thinkbot@outlook.de

ENV VERSION=0.3.0

RUN gem install ckm_client --version ${VERSION} --no-format-exec

WORKDIR /tmp

ENTRYPOINT ["ckmc"]
CMD ["--help"]
