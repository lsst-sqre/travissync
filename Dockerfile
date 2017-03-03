FROM       centos:7
MAINTAINER sqre-admin
LABEL      description="LSST DM/SQuaRE TravisCI Sync cron job" \
           name="lsstsqre/travissync"

USER       root
RUN        yum update -y
RUN        yum install -y epel-release
RUN        yum repolist
RUN        yum install -y git python-pip python-devel
RUN        yum install -y gcc openssl-devel
RUN        pip install --upgrade pip
RUN        useradd -d /home/syncer syncer
RUN        mkdir /dist

ARG        VERSION="0.0.1"
LABEL      version="$VERSION"
COPY       dist/sqre-travissync-$VERSION.tar.gz /dist
RUN        pip install /dist/sqre-travissync-$VERSION.tar.gz

USER syncer
WORKDIR /home/syncer
CMD [ "sqre-travissync" ]


