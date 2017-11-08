FROM ruby:2.2.5

RUN apt-get update && apt-get install wget sudo -y
RUN wget -O- https://toolbelt.heroku.com/install-ubuntu.sh | sh
RUN heroku --help

WORKDIR /app

ENTRYPOINT ["heroku"]

