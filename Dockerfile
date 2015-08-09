FROM alpine:latest
MAINTAINER Christian Wagner <chriswayg@gmail.com>

RUN echo "@testing http://nl.alpinelinux.org/alpine/edge/testing" >> /etc/apk/repositories && \
    apk add --update \
		file \
		less \
		vim  \
		atop \
		htop \
		ltrace \
		strace \
		sysstat \
		lsof \
		bridge-utils \
		ca-certificates \
		curl \
		ethtool \
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
		tar \
		rsync \
		ncurses \
		ncurses-terminfo \
                nano \
		zip \
		ncdu \
		hdparm \
		obnam \
		screen \
		pciutils \
		psmisc \
		tree \
		wget \
		speedtest-cli \
		psmisc@testing \
		shadow@testing \
		arping@testing \
		dstat@testing \
		pv@testing \
		lshw@testing \
		sslscan@testing && \
    rm -rf /var/cache/apk/*

CMD ["bash"]
