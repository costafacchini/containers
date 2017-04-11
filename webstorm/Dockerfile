FROM openjdk:8

RUN apt-get update -y && apt-get -y install wget tar

RUN wget http://download.jetbrains.com/webstorm/WebStorm-2016.1.3.tar.gz
RUN tar -xvzf WebStorm-2016.1.3.tar.gz

RUN curl -sL https://deb.nodesource.com/setup_6.x | bash -
RUN apt-get install -y nodejs
RUN npm install -g bower jshint jscs gulp-cli


ENTRYPOINT ["/WebStorm-145.1616.9/bin/webstorm.sh"]

