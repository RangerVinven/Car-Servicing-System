# Car-Services-Database

To create the database, go to this folder in the terminal:

1. Run "docker build -t car-service-db ./"
2. Run "docker run car-service-db"

To stop the database, run:

1. Run "docker ps" - this will show you the running docker containers
2. Find the "NAME" for the docker container (the last column)
3. Run "docker stop NAME" (change the name to the name)