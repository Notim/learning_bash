# Docker Utils commands

#### List process
```console 
foo@bar:~$ docker ps 
```
#### List all images 
```console
foo@bar:~$ docker images
``` 
#### Download image from docker hub
```console
foo@bar:~$ docker pull [image-name:image-version]
``` 
#### Remove image from local space
```console 
foo@bar:~$ docker rmi [image name or id]
```
#### List containers on
```console
foo@bar:~$ docker container ps
```
#### List all containers (on && off)
```console
foo@bar:~$ docker container ps -a
``` 
#### Delete all containers
```console
foo@bar:~$ docker rm $(docker container ps -a -q)
``` 
#### start a container
```console
foo@bar:~$ docker container start [id or name]
```
#### stop a running container
```console
foo@bar:~$ docker container kill  [id or name]
``` 
#### run a program in running container
```console
foo@bar:~$ docker container exec [-it or -d] [container id or name] [command]
``` 
#### commom structure to make your container with an iso
```console
foo@bar:~$ docker container run --name [container-name] (-d [hide] or -it [enter interactive tty]) -p [specifies the port to access him (selfport:container-app-port) ] -e [environment special parameters] [isoname] [command to run on start, if empty his gone start with default command]
``` 

#### to enter on your dockerhub account
```console
foo@bar:~$ docker login -u "yourhubusername" -p "password"
``` 

#### naming an image 
```console
foo@bar:~$ docker tag [imagename] yourhubusername/imagename:=version
```
#### push your image to dockerhub 
```console
foo@bar:~$ docker push yourhubusername/imagename:=version
```
#### push your image for dockerhub 
```console
foo@bar:~$ docker pull yourhubusername/imagename:=version
```
# utils first Data Base programs to run in containers

#### mysql
```console
foo@bar:~$ docker run --name "container-mysql" -p 0.0.0.0:8050:3306 -e MYSQL_ROOT_PASSWORD="YourPasswordHere123" -d mysql mysqld --default-authentication-plugin=mysql_native_password
```

#### microsoft sqlserver
```console
foo@bar:~$ docker run --name "container-sqlserver" -p 0.0.0.0:8051:1433 -e ACCEPT_EULA=Y -e SA_PASSWORD=YourPasswordHere123 -d microsoft/mssql-server-linux 
```

#### postgres
```console
foo@bar:~$ docker run --name "container-postgres" -p 0.0.0.0:8052:5432 -e POSTGRES_PASSWORD="YourPasswordHere123" -d postgres
```
