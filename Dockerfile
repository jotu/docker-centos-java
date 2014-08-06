
FROM centos:centos6

MAINTAINER Joacim Turesson, joacim.turesson@autenta.se

RUN yum update -y
RUN yum reinstall -y glibc-common

RUN localedef -i sv_SE -f UTF-8 sv_SE.utf8

# Install Java 7
RUN yum install -y java-1.7.0-openjdk

RUN java -version
