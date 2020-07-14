rm -rf kanban
echo 'DjPvzkdCTP7mqSs' > ~/my_password.txt 
cat ~/my_password.txt | sudo docker login --username noussair333 --password-stdin
#sudo docker login -u noussair333 -p $PASS
#echo '{
#  "Username": "noussair333",
#  "Secret": "DjPvzkdCTP7mqSs"
#}'
git clone https://github.com/wkrzywiec/kanban-board.git kanban
cd kanban
sudo docker-compose build
sudo docker-compose push