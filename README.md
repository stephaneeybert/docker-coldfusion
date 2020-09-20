Installation

Pull the image
```
docker pull eaps-docker-coldfusion.bintray.io/cf/coldfusion:latest
```

Watch some logs in terminals
```
watch docker ps
watch docker stack ps --no-trunc coldfusion
docker service logs -f coldfusion_coldfusion
tail -f volumes/logs/coldfusion-out.log
```

Create the project directory
```
mkdir -p ~/dev/docker/projects/coldfusion;
```

Create the volume directories
```
mkdir -p ~/dev/docker/projects/coldfusion/volumes/app;
mkdir -p ~/dev/docker/projects/coldfusion/volumes/logs;
```

Add a hostname
In the /etc/hosts file add the entry:
127.0.1.1 dev.coldfusion

View the application in the browser at
```
http://dev.coldfusion:8500/
```

The admin console
```
http://dev.coldfusion:8500/CFIDE/administrator/
```
The default password is ColdFusion123

Start the services
```  
cd ~/dev/docker/projects/coldfusion
docker stack deploy --compose-file docker-compose-dev.yml coldfusion
```

Stopping the common services
```  
docker stack rm coldfusion
```
