FROM centos:centos7

MAINTAINER Song Young-Jin <myevan80@gmail.com>

RUN yum install -y wget

RUN wget -O /usr/local/sbin/p4d http://cdist2.perforce.com/perforce/r15.1/bin.linux26x86_64/p4d 
RUN wget -O /usr/local/sbin/p4  http://cdist2.perforce.com/perforce/r15.1/bin.linux26x86_64/p4  

RUN chmod +x /usr/local/sbin/p4d
RUN chmod +x /usr/local/sbin/p4

VOLUME /data/perforce
VOLUME /var/log/perforce

ENV	P4ROOT		/data/perforce
ENV	P4JOURNAL	/var/log/perforce/journal
ENV	P4LOG		/var/log/perforce/p4err
ENV	P4PORT		1666

EXPOSE 1666

CMD p4d
