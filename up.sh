export $(cat /changan/docker/changan.env | grep -v '^#')
docker system prune
cd /changan/docker/stacks/admin
docker-compose up -d
cd /changan/docker/stacks/content
docker-compose up -d
cd /changan/docker/stacks/db
docker-compose up -d
cd /changan/docker/stacks/download
docker-compose up -d
cd /changan/docker/stacks/frontend
docker-compose up -d
cd /changan/docker/stacks/monitoring
docker-compose up -d
cd /changan/docker/stacks/local
docker-compose up -d
