echo 'DjPvzkdCTP7mqSs' > ~/my_password.txt 
cat ~/my_password.txt | docker login --username foo --password-stdin
sudo docker login -u noussair333 -p $PASS
git clone https://gitlab.com/team_devops_pfe/pfespringangular.git kanban
cd kanban
sudo docker-compose build
sudo docker-compose push