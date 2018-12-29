# Docker Utils commands

#### List process
```console 
user@host: ~ $ docker ps 
```
#### List all images 
```console
user@host: ~ $ docker images
``` 
#### Download image from docker hub
```console
user@host: ~ $ docker pull [image-name:image-version]
``` 
#### Remove image from local space
```console 
user@host: ~ $ docker rmi [image name or id]
```
#### List containers on
```console
user@host: ~ $ docker container ps
```
#### List all containers (on && off)
```console
user@host: ~ $ docker container ps -a
``` 
#### Delete all containers
```console
user@host: ~ $ docker rm $(docker container ps -a -q)
``` 
#### start a container
```console
user@host: ~ $ docker container start [id or name]
```
#### stop a running container
```console
user@host: ~ $ docker container kill  [id or name]
``` 
#### run a program in running container
```console
user@host: ~ $ docker container exec [-it or -d] [container id or name] [command]
``` 
#### commom structure to make your container with an iso
```console
user@host: ~ $ docker container run --name [container-name] (-d [hide] or -it [enter interactive tty]) -p [specifies the port to access him (selfport:container-app-port) ] -e [environment special parameters] [isoname] [command to run on start, if empty his gone start with default command]
``` 

#### to enter on your dockerhub account
```console
user@host: ~ $ docker login -u "yourhubusername" -p "password"
``` 

#### naming an image 
```console
user@host: ~ $ docker tag [imagename] yourhubusername/imagename:=version
```
#### push your image to dockerhub 
```console
user@host: ~ $ docker push yourhubusername/imagename:=version
```
#### push your image for dockerhub 
```console
user@host: ~ $ docker pull yourhubusername/imagename:=version
```
# utils first Data Base programs to run in containers

#### mysql
```console
user@host: ~ $ docker run --name "container-mysql" -p 0.0.0.0:8050:3306 -e MYSQL_ROOT_PASSWORD="YourPasswordHere123" -d mysql mysqld --default-authentication-plugin=mysql_native_password
```

#### microsoft sqlserver
```console
user@host: ~ $ docker run --name "container-sqlserver" -p 0.0.0.0:8051:1433 -e ACCEPT_EULA=Y -e SA_PASSWORD=YourPasswordHere123 -d microsoft/mssql-server-linux 
```

#### postgres
```console
user@host: ~ $ docker run --name "container-postgres" -p 0.0.0.0:8052:5432 -e POSTGRES_PASSWORD="YourPasswordHere123" -d postgres
```
