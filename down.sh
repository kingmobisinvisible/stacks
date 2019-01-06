export $(cat /changan/docker/changan.env | grep -v '^#')
cd /changan/docker/stacks/admin
docker-compose down
cd /changan/docker/stacks/content
docker-compose down
cd /changan/docker/stacks/db
docker-compose down
cd /changan/docker/stacks/download
docker-compose down
cd /changan/docker/stacks/frontend
docker-compose down
cd /changan/docker/stacks/monitoring
docker-compose down
cd /changan/docker/stacks/local
docker-compose down
