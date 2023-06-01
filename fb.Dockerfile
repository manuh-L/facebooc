FROM harbor.lab.com/library/ubuntu-libsqlite3:v1
WORKDIR /opt/facebooc
COPY ./bin ./bin/
COPY ./static ./static/
COPY ./templates ./templates/
EXPOSE 9091
CMD bin/facebooc