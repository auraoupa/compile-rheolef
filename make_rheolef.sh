docker build -t rheolef .

docker run --name compilerheolef rheolef

docker cp compilerheolef:/usr/bin/rheolef-config /Users/aureliealbert/Work/rheolef/rheolef-config
