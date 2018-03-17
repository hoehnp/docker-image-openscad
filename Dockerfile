FROM debian:stable-slim
MAINTAINER Brian Bassett <bbassett1276@gmail.com>

RUN apt-get update && apt-get install -y --no-install-recommends \
	make \
	openscad \
    && rm -rf /var/lib/apt/lists/*
RUN mkdir -p /root/.local/share

