FROM alpine:latest
MAINTAINER Christian Wagner <chriswayg@gmail.com>

RUN echo "@testing http://nl.alpinelinux.org/alpine/edge/testing" >> /etc/apk/repositories && \
    apk add --update \
		file \
		atop \
		htop \
		ltrace \
		strace \
		sysstat \
		bridge-utils \
		ca-certificates \
		iftop \
		iperf \
		iproute2 \
		net-tools \
		nmap \
		tcpdump \
		bash \
		bash-completion \
		gettext \
		logrotate \
		ncurses \
		ncurses-terminfo \
                nano \
		zip \
		ncdu \
		hdparm \
		obnam \
		screen \
		pciutils \
		tree \
		psmisc@testing \
		speedtest-cli \
		shadow@testing \
		dstat@testing \
		pv@testing \
		sslscan@testing && \
    rm -rf /var/cache/apk/*

CMD ["bash"]
