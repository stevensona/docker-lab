# Lab3 - Where's the data?

This lab introduces the concept of state as it pertains to docker. Understanding
where data is stored is critical to avoiding data-loss.

# Steps

1. Enter lab3 and execute `docker-compose up` to bring up the application.

2. Visit http://localhost:8080 and reload the page several times to
   increment the counter.

3. The ruby script reads and writes a text file containing the "hit counter"

4. Examine the contents of count.txt. Why hasn't it changed?

5. Execute `docker-compose up --force-recreate`

6. Again visit http://localhost:8080 . Is this what you expected?


# Takeaways
`--force-recreate` asks compose to create _new_ containers.


- Best practice dictates that containers be as ephemeral as possible
- `docker-compose down` stops *AND* deletes containers (container data lost)
- `docker-compose stop` stops running containers (container data maintained)
- Don't store (important) data in container--use volumes (see next lab)