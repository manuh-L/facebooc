FROM  rockylinux:9.1

WORKDIR /opt/facebooc

COPY . .

RUN  yum update -y &&  \
     yum install -yq gcc gcc-c++ glibc-devel make sqlite-devel sqlite && \ 
     make all 

EXPOSE 9091

CMD bin/facebooc