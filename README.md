# toolbox
#### a small Alpine Linux based toolbox for Docker on CoreOS

This toolbox includes general networking and admin tools, nano and vim text editors, rsync and Obnam for backup, git and many tools geared towards performance metric gathering and debugging: Some of these tools include generic ones like htop, dstat, atop; more specific tools like iostat, iotop, pidstat, lsof and mpstat; network oriented tools like tcpdump, iftop, iperf, ethtool and the iproute2 tools; and strace/ltrace for tracing. These are added to the tiny base install of Alpine, keepnig the whole package as small as possible.

- the image weighs in at about 120 MB

##### Complete list of Tools/Packages:

		git file less vim atop htop ltrace strace 
		sysstat lsof bridge-utils ca-certificates curl 
		ethtool iftopiperf iproute2 net-tools nmap tcpdump
		bash bash-completion gettext logrotate tar rsync ncurses nano 
		zip ncdu hdparm obnam screen pciutils psmisc tree wget 
		speedtest-cli psmisc shadow arping dstat pv lshw sslscan

##### To set as the default CoreOS toolbox:

    sudo cat > ~/.toolboxrc << "EOF"
    TOOLBOX_DOCKER_IMAGE=chriswayg/toolbox
    TOOLBOX_USER=root
    EOF

See the [Docker Hub](https://hub.docker.com/r/chriswayg/toolbox/) entry for this container. And the Github [Repository.](https://github.com/chriswayg/toolbox)

---
###### License:
This program is free software; you can redistribute it and/or modify it under the terms of the GNU General Public License as published by the Free Software Foundation; either version 2 of the License, or (at your option) any later version.
