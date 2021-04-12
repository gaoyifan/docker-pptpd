FROM smartentry/centos:7-0.4.4

MAINTAINER Yifan Gao <docker@yfgao.com>

ADD .docker $ASSETS_DIR

RUN smartentry.sh build
