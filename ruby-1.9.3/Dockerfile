# crea ruby193 congeniale a Riccardo

#MAINTAINER Riccardo Carlesso <riccardo.carlesso+ruby193@gmail.com>
# dockerhub: usa un Debian 8./0 (jesse) cui manca un sacco di roba
FROM ruby:1.9.3

RUN apt-get -y install git
RUN apt-get -y install libmysqlclient-dev mysql-common libmysqlclient18

## NON VA! ##

# https://superuser.com/questions/1423486/issue-with-fetching-http-deb-debian-org-debian-dists-jessie-updates-inrelease
RUN printf "deb http://archive.debian.org/debian/ jessie main\ndeb-src http://archive.debian.org/debian/ jessie main\ndeb http://security.debian.org jessie/updates main\ndeb-src http://security.debian.org jessie/updates main" > /etc/apt/sources.list
RUN apt-get -y update
RUN apt-get -y install vim
RUN apt-get -y install mysql-client

RUN gem install ric

# TODO(ricc): have a rublurb.sh to do the "Ruby Blurb"
RUN touch     /riccardo.was.here
RUN ruby -v > /RUBY.VERSION
RUN gem -v  >  /GEM.VERSION
COPY VERSION /ricc-ruby1.9.3.VERSION