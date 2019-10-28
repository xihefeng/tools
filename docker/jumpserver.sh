docker rm -f jumpserver;
docker run --name jumpserver --restart=always -d \
	-p 81:80 \
	-p 2222:2222 \
	-v $PWD/media:/opt/jumpserver/data/media \
	-v $PWD/mysql:/var/lib/mysql \
	jumpserver/jms_all:latest;
