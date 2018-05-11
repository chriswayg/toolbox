# toolbox
#### A small Alpine Linux based toolbox for Docker on CoreOS

This toolbox includes general networking and admin tools, nano and vim text editors, rsync and Obnam for backup, git and many tools geared towards performance metric gathering and debugging: Some of these tools include generic ones like htop, dstat, atop; more specific tools like iostat, iotop, pidstat and mpstat; network oriented tools like tcpdump, iftop, iperf and the iproute2 tools; and strace/ltrace for tracing. These are added to the tiny base install of Alpine, keeping the whole image as small as possible.

##### List of Tools/Packages:

```
file atop htop ltrace strace
sysstat bridge-utils ca-certificates
iftop iperf iproute2 net-tools nmap tcpdump
bash bash-completion gettext logrotate ncurses nano
ncdu hdparm obnam screen pciutils psmisc tree
speedtest-cli shadow dstat pv sslscan
```

##### To set as the default CoreOS toolbox and run:

```
sudo cat > ~/.toolboxrc << "EOF"
TOOLBOX_DOCKER_IMAGE=chriswayg/toolbox
EOF

toolbox
```

Inside of the toolbox, the machine's filesystem is mounted to /media/root

See also https://coreos.com/os/docs/latest/install-debugging-tools.html

---
###### License:
This program is free software; you can redistribute it and/or modify it under the terms of the GNU General Public License as published by the Free Software Foundation; either version 2 of the License, or (at your option) any later version.
