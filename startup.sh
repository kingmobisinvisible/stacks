setenforce 0
systemctl stop firewalld
systemctl disable firewalld
mount -t cifs "//192.168.1.110/docker" -o username=kingmob,password=Reznor6^^,domain=WORKGROUP,\vers=3\.0 /mnt/docker
mount -t cifs "//192.168.1.110/media" -o username=kingmob,password=Reznor6^^,domain=WORKGROUP,\vers=3\.0 /mnt/media
mount -t cifs "//192.168.1.110/changanb" -o username=kingmob,password=Reznor6^^,domain=WORKGROUP,\vers=3\.0 /mnt/changanb
systemctl restart docker
export $(cat /changan/docker/changan.env | grep -v '^#')
cd /changan/docker/stacks/admin
docker stack deploy --compose-file docker-compose.yml admin
cd /changan/docker/stacks/content
docker stack deploy --compose-file docker-compose.yml content
cd /changan/docker/stacks/db
docker stack deploy --compose-file docker-compose.yml db
cd /changan/docker/stacks/download
docker stack deploy --compose-file docker-compose.yml download
cd /changan/docker/stacks/frontend
docker stack deploy --compose-file docker-compose.yml frontend
cd /changan/docker/stacks/monitoring
docker stack deploy --compose-file docker-compose.yml monitoring
cd /changan/docker/stacks/local
docker-compose up -d
