
# befor up you should make sure that the 3306,8000,8080 port is not in use.
docker-compose up -d

sudo docker-compose run python python /code/easyPccWeb/manage.py makemigrations
sudo docker-compose run python python /code/easyPccWeb/manage.py migrate
sudo docker-compose run python uwsgi --ini /code/easyPccWeb/uwsgi.ini 
#sudo docker-compose run python python /code/easyPccWeb/manage.py createsuperuser
