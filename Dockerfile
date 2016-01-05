FROM ustclug/centos:7

MAINTAINER Yifan Gao "git@gaoyifan.com"

RUN yum install -y pptpd radiusclient-ng

ENV CACHE_DIR="/etc/docker-pptp"

ENV TEMPLATES_DIR="${CACHE_DIR}/templates" \
    ATTRIBUTE_FIX_LIST="${CACHE_DIR}/attribute_fix_list" \
    DEFAULT_ENV="${CACHE_DIR}/default_env"

COPY assets $CACHE_DIR

COPY entrypoint/entrypoint.sh /sbin/entrypoint.sh

ENTRYPOINT ["/sbin/entrypoint.sh"]
CMD ["/usr/sbin/pptpd", "-f"]
