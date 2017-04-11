FROM ruby:2.2.5

RUN apt-get update -qq && apt-get install -y build-essential libpq-dev

RUN curl -sL https://deb.nodesource.com/setup_6.x | bash -
RUN apt-get install -y nodejs
RUN npm install -g bower jshint jscs

RUN wget https://download.jetbrains.com/ruby/RubyMine-2016.3.2.tar.gz
RUN tar -xvzf RubyMine-2016.3.2.tar.gz

RUN gem install bundler

RUN apt-get install -y default-jre

ENTRYPOINT ["/RubyMine-2016.3.2/bin/rubymine.sh"]

