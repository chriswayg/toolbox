FROM alpine
MAINTAINER Christian Wagner <chriswayg@gmail.com>

# most utilities are from the latest stable alpine release
# add some additional utilities that are only available in 'community'
RUN cat /etc/os-release && \
    echo "@community http://dl-6.alpinelinux.org/alpine/edge/community" >> /etc/apk/repositories && \
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
		psmisc@community \
		shadow@community \
		pv@community && \
    rm -rf /var/cache/apk/*

CMD ["bash"]
