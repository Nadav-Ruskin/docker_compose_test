# example app1 dockerfile
FROM ubuntu:18.04
RUN apt-get update
RUN	apt-get install -qy python3
RUN	apt-get install -qy netcat
RUN apt-get install -qy python3-pip
ADD . /app2
WORKDIR /app2
RUN pip3 install -r requirements.txt

CMD [ "python3", "-u", "app2.py" ]

# CMD [ "/bin/bash", "-c", "while true ; do sleep 5 ; date ; done" ]