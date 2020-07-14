PASS='DjPvzkdCTP7mqSs'
sudo docker login -u noussair333 -p $PASS
git clone https://gitlab.com/team_devops_pfe/pfespringangular.git kanban
cd kanban
sudo docker-compose build
sudo docker-compose push