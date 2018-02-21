FROM ruby:2.4.0

ADD Gemfile /tmp/Gemfile
ADD Gemfile.lock /tmp/Gemfile.lock
RUN cd /tmp/ && bundle install --jobs 4

RUN apt-get update && apt-get install -y python-pip unzip \
	&& wget https://github.com/getgauge/gauge/releases/download/v0.8.4/gauge-0.8.4-linux.x86_64.zip -O /tmp/gauge-0.8.4-linux.x86_64.zip \
    && cd /tmp \
    && unzip gauge-0.8.4-linux.x86_64.zip \
	&& cp /tmp/bin/gauge* /usr/local/bin/ \
	&& cp -rv /tmp/config /usr/local/share \
    && gauge --install ruby \
    && gauge --install html-report

ADD . /app
WORKDIR /app

ENV ENVIRONMENT default
