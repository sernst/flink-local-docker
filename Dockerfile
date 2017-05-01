FROM openjdk:latest

RUN wget www.scala-lang.org/files/archive/scala-2.11.11.deb && \
    dpkg -i scala-2.11.11.deb && \
    apt-get update && \
    apt-get install scala

RUN wget https://dl.bintray.com/sbt/debian/sbt-0.13.15.deb && \
    dpkg -i sbt-0.13.15.deb && \
    apt-get update && \
    apt-get install sbt

RUN wget http://www-us.apache.org/dist/flink/flink-1.2.0/flink-1.2.0-bin-hadoop27-scala_2.11.tgz && \
    tar xzf flink-1.2.0-bin-hadoop27-scala_2.11.tgz && \
    mv flink-1.2.0/ flink


EXPOSE "8081"
