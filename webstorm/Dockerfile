FROM openjdk:8

RUN apt-get update -y && apt-get -y install wget tar

RUN wget http://download.jetbrains.com/webstorm/WebStorm-2017.2.2.tar.gz
RUN tar -xvzf WebStorm-2017.2.2.tar.gz

RUN curl -sL https://deb.nodesource.com/setup_6.x | bash -
RUN apt-get install -y nodejs
RUN npm install -g bower jshint jscs gulp-cli


ENTRYPOINT ["/WebStorm-172.3757.55/bin/webstorm.sh"]

