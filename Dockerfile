FROM smartentry/centos:7-0.3.2

MAINTAINER Yifan Gao <docker@yfgao.com>

ADD . $ASSETS_DIR

RUN smartentry.sh build

CMD ["/usr/sbin/pptpd", "-f"]
