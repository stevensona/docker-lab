# Lab4 - Where's the data? (continued)

The purpose of this lab is to understand the use of docker volumes to persist
data outside of a container.

# Steps

1. Enter lab3 and execute `docker-compose up` to bring up the application.

2. Visit http://localhost:8080 and reload the page several times to
   increment the counter.

3. The ruby script reads and writes a text file containing the "hit counter"

4. Examine the contents of count.txt. Why has it changed?

5. Execute `docker-compose up --force-recreate`

6. Again visit http://localhost:8080 . Is this what you expected?


# Takeaways

- Data that must be persisted between instances of container MUST be stored
  external to it.