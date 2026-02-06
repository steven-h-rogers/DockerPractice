#the image that you'd like to use (a version of linux capable of running a certain programming language)
FROM python:3.10.19-slim

#puts all relevant data/commands in /app instead of /root
WORKDIR /app

#install external libraries 
RUN pip install numpy

#copy everything in src and put it into /app/src in the container
COPY ./src ./src

#how to run the program (-u flag for unbuffered output to have immediate outputs )
CMD [ "python", "-u", "./src/main.py" ]