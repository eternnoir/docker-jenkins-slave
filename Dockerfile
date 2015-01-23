#
# Jenkins image with ubuntu
#
# Pull base image.
FROM eternnoir/ubuntu-14.04-sshd
MAINTAINER Frank Wang "eternnoir@gmail.com"

RUN apt-get update && apt-get upgrade && apt-get install default-jre

RUN adduser --quiet jenkins
RUN echo "jenkins:jenkins" | chpasswd

CMD ["/usr/sbin/sshd", "-D"]
