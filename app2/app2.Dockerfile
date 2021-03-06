# app2 dockerfile
FROM ubuntu:18.04
RUN apt-get update && \
	apt-get install -qy python3 python3-pip
ADD . /app2
WORKDIR /app2
RUN pip3 install -r requirements.txt

CMD [ "python3", "-u", "app2.py" ]