FROM alpine:latest

MAINTAINER Zack Cerza <zack@redhat.com>

RUN apk update && apk add beanstalkd beanstalkd-doc

ENV BEANSTALK_ADDR "0.0.0.0"
ENV BEANSTALK_PORT "11300"

VOLUME [/var/lib/beanstalkd]

CMD /usr/bin/beanstalkd -V -l $BEANSTALK_ADDR -p $BEANSTALK_PORT
