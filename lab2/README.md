# Lab2

Purpose of this lab is to introduce docker-compose and see how it can be used to
accomplish the same outcome as lab1 with less effort.

# Steps

1. Review the docker-compose.yml file

2. Note the docker-compose file defines one service 'app' that uses the lab1
   image and forwards host port 8080 to container port 4567

3. Enter lab2 folder and execute `docker-compose up` to launch the service.

4. Visit http://localhost:8080 in your web-browser to make a request to the app.
