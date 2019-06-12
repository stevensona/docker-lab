# Lab1

Purpose of this lab is to familiarize user with longer-running services in
docker.

# Files

- `app.rb` Contains the application code
- `Dockerfile` Contains the steps required to build the application image
- `Gemfile` and `Gemfile.lock` specify dependencies for application

# Steps

1. Enter lab1 directory and execute `docker build -t lab1 .` to build lab1
   image.

2. Execute `docker run --rm -p 8080:4567 lab1` to start an instance of the
   newly created an image.

3. Visit http://localhost:8080 in your web-browser to make a request to the app.


# Takeaways

1. Use `-p` to forward a host port to a container port.
