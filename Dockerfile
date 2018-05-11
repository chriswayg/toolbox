FROM alpine
MAINTAINER Christian Wagner <chriswayg@gmail.com>
ENV TERM=xterm

# most utilities are from the latest stable alpine release
# added some utilities that are only available in edge 'community' or 'testing'
RUN cat /etc/os-release && \
    echo "@edge http://nl.alpinelinux.org/alpine/edge/main" >> /etc/apk/repositories && \
    echo "@testing http://nl.alpinelinux.org/alpine/edge/testing" >> /etc/apk/repositories && \
    echo "@community http://nl.alpinelinux.org/alpine/edge/community" >> /etc/apk/repositories && \
    apk --no-cache add --update \
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
    pv

# Set tini as entrypoint
ENTRYPOINT ["tini", "--"]

CMD ["bash"]
