FROM ubuntu:16.04

RUN apt-get update -y && apt-get install -y libzbar-dev bash gcc git libc-dev curl wget vim nano \
    && apt-get install -y ranger caca-utils highlight atool w3m poppler-utils mediainfo \
    && apt-get install -y iputils-ping telnet openssh-client net-tools \
    man unzip vim-tiny bc openssh-server thrift-compiler netcat sudo \
    && apt-get install -y build-essential python-software-properties software-properties-common \
    && apt-get autoremove -y \
    && apt-get clean

RUN apt-get update && apt-get install -y default-jdk maven

ADD . /opt/project
RUN cd /opt/project && mvn clean compile install -X

WORKDIR /opt/project

CMD ["java", "-cp", "target/the-dead-rabbit-1.0-SNAPSHOT.jar", "org.bigrabbit.com.PingRabbit"]
