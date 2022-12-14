# [Docker](https://www.docker.com/ "Docker's Homepage") Install Script

## Installation procedure

##### 1. Download the script:
```
sudo wget https://raw.githubusercontent.com/jjackofall/DockerInstallScript/main/docker_install.sh
```
##### 2. Modify the parameters as you wish.
There are a few things you can configure, this is the most used list:<br/>
```DOCKER_COMPOSE_VERSION``` will be the Docker Compose vesrion.<br/>

#### 3. Make the script executable
```
sudo chmod +x docker_install.sh
```
##### 4. Execute the script:
```
sudo ./docker_install.sh
```

## Where should I host Docker?
There are plenty of great services that offer good hosting. The script has been tested with a few major players such as [Google Cloud](https://cloud.google.com/), [Hetzner](https://www.hetzner.com/), [Amazon AWS](https://aws.amazon.com/) and [DigitalOcean](https://www.digitalocean.com/products/droplets/).

## Minimal server requirements
While technically you can run an Docker instance on 1GB (1024MB) of RAM it is absolutely not advised. A Linux instance typically uses 300MB-500MB and the rest has to be split among others.
