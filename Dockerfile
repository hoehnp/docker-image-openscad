FROM debian:testing
MAINTAINER Patrick Höhn <hoehnp@gmx.de>

RUN apt-get update && apt-get install -y --no-install-recommends \
	ca-certificates \
	git \
	make \
	openscad \
        binutils \
    && rm -rf /var/lib/apt/lists/* \
    && strip --remove-section=.note.ABI-tag /usr/lib/x86_64-linux-gnu/libQt5Core.so.5
RUN mkdir -p /root/.local/share /.local/share

