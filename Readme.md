## install docker 
sfti

## build image to a image name - imgname
docker build -t imgname .

## run docker to a container name - ctname
docker run -d -p port:22 -v local:/root/dir --name ctname imgname /usr/sbin/sshd -D

in which
portnum: like 10888 whatever
local: a dir in local like /home/test

## setting ssh host -- add to `~/.ssh/config`
Host ctname
    HostName localhost
    User     root
    Port     portnum

## connection
ssh ctname
password: root

## run whatever
