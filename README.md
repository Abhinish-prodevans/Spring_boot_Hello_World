# Spring_boot_Hello_World


Please follow the instruction 


From the Docker lab console clone from the github as follows:

$ git clone https://github.com/Abhinish-prodevans/Spring_boot_Hello_World.git

Then check what has cloned

$ ls -lrt

Then change directory to the cloned dir

$ cd clone directory

Like: cd Spring_boot_Hello_World

The above dir will have a file named "Dockerfile", which will help to pass parameter to buid the docker container. Use the following command

$ docker build -t ImageName:TagName dir Like: docker build -t spring_boot_hello:v1.0 .

Check the build as follows:

$ docker images

Then run the docker as follows:

$ docker run imageName:tagNo.

Like: docker run spring_boot_hello:v1.0

Or docker run -d spring_boot_hello:v1.0 [Run container in background and print container ID]

Or docker run -d -p 8080:8080 spring_boot_hello:v1.0 [Run container in background and print container ID with port mapping]

To check the container has been created user

$ docker ps

To check how the code is working, need to inspect the docker with the container id and get the runtime IPAdress assigned to the application as follows:

$ docker inspect | grep "IPAddress"

$ docker inspect 69569e8ab25a | grep "IPAddress"

It will give the IP Address associated with this container Use this IP to call the webpage, which the container is serving (port for sprintboot is 8080, nodejs one running at 3000 and python running at ...)

To check the web page now CURL with the IP address returned as follows:

$ curl IPAddress:Port

Like: curl 172.17.0.2:8080 (enter) - It will return the hello world!
