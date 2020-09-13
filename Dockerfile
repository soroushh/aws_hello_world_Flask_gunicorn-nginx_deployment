# use the official image to create the image from
FROM alpine:latest
#RUN apk add --no-cache cython3
RUN apk add --update py-pip
RUN apk add --update --no-cache python3 && ln -sf python3 /usr/bin/python

# Copy all the requirements and install them
COPY requirements.txt /usr/src/app/requirements.txt
RUN pip install -r /usr/src/app/requirements.txt

# Set the working directory
WORKDIR /usr/src/app

EXPOSE 8000

# Copy the files to here
COPY . /usr/src/app
CMD ["gunicorn","-b", "0.0.0.0:8000","application:app"]




