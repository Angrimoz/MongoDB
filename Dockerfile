# install MongoDB
ADD requirements.txt /
RUN pip install -r requirements.txt
# Create the MongoDB data directory
RUN mkdir -p /data/db

# Expose port #27017 from the container to the host
EXPOSE 27017

# Set start Mongo services
CMD service mongod start
RUN -d -p 27017:27017 -v ~/data:/data/db mongo
CMD mongo localhost/MyDB
