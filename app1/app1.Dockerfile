# app1 dockerfile
FROM ubuntu:18.04
RUN apt-get update && \
	apt-get install -qy python3 python3-pip
ADD . /app1
WORKDIR /app1
RUN pip3 install -r requirements.txt

CMD [ "python3", "-u", "app1.py" ]