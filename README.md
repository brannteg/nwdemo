This is a nwjs test to demonstrate and run a browser against a predefined server.

The container is built round the nw version 0.38.4
download it here https://dl.nwjs.io/v0.38.4/nwjs-sdk-v0.38.4-linux-x64.tar.gz

Files included here is:
  Dockerfile	: Docker recepie to build the test container.
  index.html	: Web page adress, referenced by the package.json file.
  package.json	: Json file parsed by the nw program inside the docker.
  startit		: Shell script to start the container.

Put all files in one directory including the downloaded nwjs.sdk file.
If you opt to use another version of download, change the Dockerfile accordingly.
Run sudo docker build . nwdemo
When done start it by running ./startit
