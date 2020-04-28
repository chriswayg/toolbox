FROM alpine
LABEL maintainer="Christian Wagner https://github.com/chriswayg"  
ENV TERM=xterm
WORKDIR /media/root

# most utilities are from the latest stable alpine release
# added some utilities that are only available in edge, community or testing
RUN cat /etc/os-release && \
    echo "@edge http://nl.alpinelinux.org/alpine/edge/main" >> /etc/apk/repositories && \
    echo "@testing http://nl.alpinelinux.org/alpine/edge/testing" >> /etc/apk/repositories && \
    echo "@community http://nl.alpinelinux.org/alpine/edge/community" >> /etc/apk/repositories && \
    apk --no-cache add --update \
        atop \
        bash \
        bash-completion \
        bridge-utils \
        ca-certificates \
        coreutils \
        curl \
        bind-tools \
        file \
        gettext \
        git \
        grep \
        hdparm \
        htop \
        iftop \
        iperf \
        iproute2 \
        logrotate \
        ltrace \
        nano \
        ncdu \
        ncurses \
        ncurses-terminfo \
        net-tools \
        nmap \
        pciutils \
        psmisc \
        pv \
        python2 \
        screen \
        shadow \
        speedtest-cli \
        strace \
        sysstat \
        tar \
        tcpdump \
        tree \
        xz \
        zip

VOLUME ["/media/root"]

CMD ["bash"]
