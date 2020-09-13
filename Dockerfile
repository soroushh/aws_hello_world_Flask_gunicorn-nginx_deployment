# use the official image to create the image from
FROM alpine:latest
#RUN apk add --no-cache cython3
RUN apk add --update py-pip

# Copy all the requirements and install them
COPY requirements.txt /usr/src/app/requirements.txt
RUN pip install -r /usr/src/app/requirements.txt

# Set the working directory
WORKDIR /usr/src/app

# Copy the files to here
COPY . /usr/src/app

#CMD ['python', '/usr/src/app/application.py']




