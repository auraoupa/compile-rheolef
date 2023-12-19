# How to compile rheolef on a mac with docker

- Install docker : https://docs.docker.com/desktop/install/mac-install/
- download this repo : ```git clone https://github.com/auraoupa/compile-rheolef.git``` and cd into it
- modify the [make_rheolef.sh](make_rheolef.sh) script to match your local path where you want to have the executable
- run your modified make_rheolef.sh : ```chmod +x make_rheolef.sh; ./make_rheolef.sh```
- if you already have a container running, remove it : ```docker ps -a``` gives you the list, ```docker rm $CONTAINER_ID``` removes it

