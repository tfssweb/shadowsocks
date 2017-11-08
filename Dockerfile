FROM ubuntu
ENV TZ=Asia/Shanghai
RUN apt-get update && \
	apt-get install build-essential -y && \
	apt-get install python-pip -y && \
	pip install --upgrade setuptools  
	
ADD ./Python-2.7.11.tar.xz /usr/local/

RUN cd /usr/local/Python-2.7.11 && \
	./configure 
	
RUN	cd /usr/local/Python-2.7.11 && \
	make && \
	make install && \
	pip install shadowsocks  && \
	apt-get install python-m2crypto -y 

COPY ./ssconf/shadowsocks.json /etc/
COPY ./ssshell /root/ssshell/
RUN chmod a+x /root/ssshell/*.sh

COPY ./kcptun /root/kcptun/
RUN chmod a+x /root/kcptun/*.sh
ADD ./kcptun-linux-amd64-20160922.tar.gz /root/kcptun/
ENTRYPOINT ["ssserver","-c","/etc/shadowsocks.json","start"]
