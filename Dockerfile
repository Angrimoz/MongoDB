FROM ubuntu:16.04
ADD requirements.txt /
RUN pip install -r requirements.txt
RUN mkdir -p /data/db
EXPOSE 27017
CMD service mongod start
RUN -d -p 27017:27017 -v ~/data:/data/db mongo
CMD mongo localhost/MyDB
