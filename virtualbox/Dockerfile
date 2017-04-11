#docker run -d -it --net host -v /tmp/.X11-unix:/tmp/.X11-unix -e DISPLAY=unix$DISPLAY -v /home/alan/vm:/temp --privileged --name virtualbox virtualbox

FROM thenewvu/ubuntu-14.04
MAINTAINER Vu Le "thenewvu@gmail.com"

# install virtualbox 5.0
RUN sudo sh -c "echo 'deb http://download.virtualbox.org/virtualbox/debian '$(lsb_release -cs)' contrib' > /etc/apt/sources.list.d/virtualbox.list" && \
    wget -q http://download.virtualbox.org/virtualbox/debian/oracle_vbox.asc -O- | sudo apt-key add - && \ 
    sudo apt-get update && \
    sudo apt-get install -y virtualbox-5.0

RUN sudo apt-get install -y linux-headers-generic build-essential dkms
RUN sudo apt-get install -y aptitude
RUN sudo aptitude install -y dkms
RUN sudo /etc/init.d/vboxdrv setup

RUN sudo wget http://download.virtualbox.org/virtualbox/5.0.30/Oracle_VM_VirtualBox_Extension_Pack-5.0.30-112061.vbox-extpack
RUN sudo VBoxManage extpack install Oracle_VM_VirtualBox_Extension_Pack-5.0.30-112061.vbox-extpack

ADD ./setup.sh ./setup.sh
RUN sudo /bin/sh setup.sh

# clean up
RUN sudo apt-get clean && \
    sudo rm -rf /var/lib/apt/lists/*

# automatically start virtualbox
ENTRYPOINT ["/usr/bin/virtualbox"]
