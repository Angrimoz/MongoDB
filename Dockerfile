FROM ubuntu:16.04
RUN apt-get update 
RUN apt-get install -y mongodb-org
RUN mkdir -p /data/db
EXPOSE 27017
CMD service mongod start
RUN -d -p 27017:27017 -v ~/data:/data/db mongo
CMD mongo localhost/MyDB
