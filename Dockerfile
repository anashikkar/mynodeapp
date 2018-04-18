FROM ubuntu:16.04
RUN apt-get update && apt-get -y upgrade
ENV PATH /usr/local/bin:$PATH
RUN apt-get install -y python3.5 python3-pip
RUN pip3 install --upgrade pip
WORKDIR /root/website/
#RUN mkdir /srv 
#COPY /home/ubuntu/website/mysite /srv 
ADD . /root/website
RUN pip3 install -r requirements.txt
EXPOSE 8000
CMD ["./start.sh"]
