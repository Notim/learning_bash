#docker commands
docker ps -> list process

docker images -> list all images 
docker pull [image-name:image-version] -> download image from docker hub
docker rmi [image name or id] -> remove image from local space

docker container ps -> list containers on
docker container ps -a -> list all containers (on off)
docker rm $(docker container ps -a -q) -> delete all containers

docker container start [id or name] -> start a container
docker container kill  [id or name] -> stop a running container
docker container exec [-it or -d] [container id or name] [command] -> run a program in running container

docker container run --name [container-name] (-d [hide] or -it [enter interactive tty]) -p [specifies the port to access him (selfport:container-app-port) ] -e [environment special parameters] [isoname] [command to run on start, if empty his gone start with default command] 

docker login -u "yourhubusername" -p "password"

docker tag [imagename] yourhubusername/imagename:=version

docker push yourhubusername/imagename:=version
docker pull yourhubusername/imagename:=version

# utils first DBM programs to run in containers 
docker run --name "container-mysql" -p 0.0.0.0:8050:3306 -e MYSQL_ROOT_PASSWORD="TopZeraAdmin123" -d mysql mysqld --default-authentication-plugin=mysql_native_password
docker run --name "container-sqlserver" -p 0.0.0.0:8051:1433 -e ACCEPT_EULA=Y -e SA_PASSWORD=TopZeraAdmin123 -d microsoft/mssql-server-linux 
docker run --name "container-postgres" -p 0.0.0.0:8052:5432 -e POSTGRES_PASSWORD="TopZeraAdmin123" -d postgres


Teste de git
