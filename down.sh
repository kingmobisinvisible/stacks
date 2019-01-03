export $(cat /changan/docker/changan.env | grep -v '^#')
cd /changan/docker/stacks/local
docker-compose down
docker stack rm admin
docker stack rm content
docker stack rm download
docker stack rm frontend
docker stack rm monitoring
