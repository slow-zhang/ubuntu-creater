portnum=18881
ctname=myubt
imgname=ssh-ubt

docker build -t $imgname .
docker run -d -p $portnum:22 -v local:/root/dir --name $ctname $imgname /usr/sbin/sshd -D

echo "Host ${ctname}\\n    HostName localhost\\n    User     root\\n    Port     ${portnum}" >> ~/.ssh/config

ssh $ctname