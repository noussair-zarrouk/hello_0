sudo docker login -u noussair333 -p 'DjPvzkdCTP7mqSs'
git clone https://gitlab.com/team_devops_pfe/pfespringangular.git kanban
cd kanban
sudo docker-compose build
sudo docker-compose push