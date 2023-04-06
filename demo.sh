cd
PORTAL_PATH="/home/krishna/projects/ITBD-Backend"
cd ${PORTAL_PATH}
# sudo chown -R ubuntu:ubuntu *
#sudo cp -rp /mnt/dev/.env ${PORTAL_PATH}
sudo docker-compose -f local_docker_compose.yml down
sudo docker-compose -f local_docker_compose.yml build
sudo docker image prune -f --filter 'dangling=true' 
sudo docker-compose -f local_docker_compose.yml up -d
