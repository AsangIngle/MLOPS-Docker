#Use an official Python runtime as a parent image
FROM python:3.10-slim

#set the working directory in the container
WORKDIR /app

#copy the current directory contents into container as /app
COPY . /app

#Install any needed packages specified in requirements.txt
RUN pip install --no-cache-dir -r requirements.txt 

#make port 5000 availabe to world outside this container
EXPOSE 5000

#Define environment vairable
ENV FLASK_APP=app

#Run Flask app
CMD ["flask","run","--host=0.0.0.0"]
