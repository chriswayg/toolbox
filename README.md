# toolbox
#### a small Alpine Linux based toolbox

It includes many network realted tools, nano and vim text editors, Obnam as a backup tool, git and many others listed below.

List of Tools/Packages:

		git file less vim atop htop ltrace strace 
		sysstat lsof bridge-utils ca-certificates curl 
		ethtool iftopiperf iproute2 net-tools nmap tcpdump
		bash bash-completion gettext logrotate tar rsync ncurses nano 
		zip ncdu hdparm obnam screen pciutils psmisc tree wget 
		speedtest-cli psmisc shadow arping dstat pv lshw sslscan
		
		
- the image weighs in at about 120 MB

To set as the default CoreOS toolbox:

    sudo cat > ~/.toolboxrc << "EOF"
    TOOLBOX_DOCKER_IMAGE=chriswayg/toolbox
    TOOLBOX_USER=root
    EOF
