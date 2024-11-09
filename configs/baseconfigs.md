 #Switch to root user
 wsl -u root
 wsl -u root -d Ubuntu
 
 #update user pass
 passwd <kevoh>
 
 #Check wsl status
 wsl --status
 
 #Show installed versions
 wsl --list -v
 
 #Shut everything
 wsl.exe --shutdown
 
 #Terminate specific distibution
 wsl.exe -t <DistroName>
 
 #Boot up the default distro (marked with *):
 wsl.exe
 
 #Boot up a specific distro:
 wsl.exe -d <DistroName>
 
 #Set default Linux distribution 
 wsl -s <DistributionName> or 
 wsl --set-default <DistributionName>
 
 #delete specific linux distro
 run wsl --unregister
 
 
 #---------------------------LINUX----------------------
 #create symlinks for binaries --->-bash: /usr/bin/node: cannot execute binary file: Exec format error
 ln -s /opt/nodearmv6/bin/node /usr/local/bin/node
 
 
 
##-------------------------------------------------Install packages-----------------------------------------
#How to Install NVM on Ubuntu?
#Step 1: Update the System
sudo apt update

#Step 2: Download and Install NVM
curl -o- https://raw.githubusercontent.com/nvm-sh/nvm/v0.35.3/install.sh | bash

#Step 3: Check NVM Version
nvm --version

#Step 4: Install Node.js using NVM
nvm install node

#Step 5: Check Node.js Version
node --version

#Step 6: Install Current LTS Version
nvm install --lts

Step 7: Install a Specific Node.js Version
nvm install 11.5

#Step 8: List Installed Node.js Versions
nvm ls

#Step 9: Switch Node.js Version
#Switch between installed Node.js versions. For instance, switch to version 14.10.0 using:
nvm use v14.10.0

#Step 10: Uninstall a Node.js Version
#To uninstall a particular Node.js version (e.g., version 11.5), use:
nvm uninstall 11.5

#Step 11: Install Stable Node.js Version
nvm install stable

##------------------------------------------Managing Different Node.js Versions Using NVM-----------------
#Installing Specific Node.js Version
nvm install 12.18.3
 
#Setting Default Node.js Version
nvm alias default 12.18.3
 
#Switching Between Node.js Versions
nvm use 12.18.3
 
#Listing Installed Node.js Versions
nvm ls

#Uninstalling a Node.js Version
nvm uninstall 10.15.3
 

#Installing Latest LTS (Long Term Support) Node.js Version
nvm install --lts

#Installing Stable Node.js Version
nvm install stable



###------------------Update NVM to current version--------------------------------------------
curl -o- https://raw.githubusercontent.com/nvm-sh/nvm/$(curl -s https://api.github.com/repos/nvm-sh/nvm/releases/latest | grep 'tag_name' | cut -d\" -f4)/install.sh | bash

#uninstall nvm
rm -rf ~/.nvm 

#Launch VScode from wsl
code .


##-----------------------------------DOCKER-----------------------------------
#see images
docker images

#Pull container from dockerhub
docker pull <image>

#run container in detached mode
docker run -d <image>
docker run -d -p27017:27017 --name MongodB mongo

#See running containers
docker ps

#See both running and stopped containers
docker ps -a

#Stop containers
docker stop <containerID>

#Start containers
docker start <containerID>

#create docker network
docker network create mongo-network

#Debug container
docker logs MongodB(cpontainer name)
docker exec -it be5789d8b1e2 /bin/bash
	ls, pwd, env, exit
	
#Remove cotainer
docker rm /4b47c8cb0701

#Start docker after reboot for wsl
sudo service docker start

##---------------------------------------RUNNING CONTAINERS--------------------------	
#running containers
docker run -d \
> -p 27017:27017\
> --name mongo \
> -e MONGO_INITDB_ROOT_USERNAME=admin \
> -e MONGO_INITDB_ROOT_PASSWORD=password \
> --network mongo-network\
> mongo

docker run -d \
> -p 8081:8081 \
> --name mongo-express \
> -e ME_CONFIG_MONGODB_ADMINUSERNAME=admin \
> -e ME_CONFIG_MONGODB_ADMINPASSWORD=password \
> -e ME_CONFIG_MONGODB_SERVER=mongo \
> -e ME_CONFIG_BASICAUTH_USERNAME=webadmin \
> -e ME_CONFIG_BASICAUTH_PASSWORD=webpassword \
> --network mongo-network \
> mongo-express


##------------------------------------Node-----------------------
#Install dependancy packages
npm install


 
 
 