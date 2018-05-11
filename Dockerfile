FROM alpine
MAINTAINER Christian Wagner <chriswayg@gmail.com>

# most utilities are from the latest stable alpine release
# added some utilities that are only available in 'community' or 'testing'
RUN cat /etc/os-release && \
    echo "http://dl-4.alpinelinux.org/alpine/edge/community/" >> /etc/apk/repositories && \
    echo "@testing http://nl.alpinelinux.org/alpine/edge/testing" >> /etc/apk/repositories && \
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
    xz \
		zip \
		ncdu \
		hdparm \
		obnam \
		screen \
		pciutils \
		tar \
		tree \
		speedtest-cli \
		psmisc \
		shadow \
    tini@community \
		dstat@testing \
		pv && \
    rm -rf /var/cache/apk/*

CMD ["bash"]
