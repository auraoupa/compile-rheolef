docker build -t rheolef .

docker run --name compilerheolef rheolef

docker cp compilerheolef:/build/rheolef-7.2 /Users/alberta/Work/rheolef-7.2
