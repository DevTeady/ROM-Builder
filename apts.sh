#!/bin/bash

apt update && upgrade -y && apt install -y git ssh apt-utils sudo erofs-utils

git config --global user.name $GIT_USERNAME &&  git config --global user.email $GIT_EMAIL

rm -f /etc/profile ~/.profile ~/.bashrc

git clone https://github.com/Sushrut1101/Docker && cd Docker && cp -r proprietary/* /

DEBIAN_FRONTEND=noninteractive apt-get install -y --no-install-recommends tzdata && ln -sf /usr/share/zoneinfo/$TZ /etc/localtime && apt-get install -y tzdata && dpkg-reconfigure --frontend noninteractive tzdata

sudo apt install curl wget aria2 tmate python2 python3 silversearch* iputils-ping iproute2 nano rsync rclone tmux screen openssh-server python3-pip adb fastboot jq npm neofetch mlocate zip unzip tar ccache cpio lzma schedtool openjdk-8-jdk -y

sudo pip install twrpdtgen

git clone https://github.com/akhilnarang/scripts.git /tmp/scripts && sudo bash /tmp/scripts/setup/android_build_env.sh && rm -rf /tmp/scripts

sudo ln -sf /usr/bin/python2 /usr/bin/python

exit 0
