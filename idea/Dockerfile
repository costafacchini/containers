FROM openjdk:8

RUN apt-get update -y && apt-get -y install wget tar

RUN wget http://download.jetbrains.com/idea/ideaIU-2017.2.5.tar.gz
RUN tar -xvzf ideaIU-2017.2.5.tar.gz

RUN wget http://sourceforge.net/projects/firebird/files/firebird-linux-amd64/2.5.7-Release/FirebirdSS-2.5.7.27050-0.amd64.tar.gz
RUN tar -xvzf FirebirdSS-2.5.7.27050-0.amd64.tar.gz
RUN tar -xvzf /FirebirdSS-2.5.7.27050-0.amd64/buildroot.tar.gz -C /

CMD /bin/bash -c "/idea-IU-172.4343.14/bin/idea.sh & /opt/firebird/bin/fbguard"
