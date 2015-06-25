FROM ubuntu:14.04
MAINTAINER Robert C Smith robert@robertcsmith.consulting

# ensure UTF-8
RUN locale-gen en_US.UTF-8
ENV LANG en_US.UTF-8
ENV LC_ALL en_US.UTF-8

# surpress Upstart errors/warning
RUN dpkg-divert --local --rename --add /sbin/initctl
RUN ln -sf /bin/true /sbin/initctl

# add git repo, update repo lists and upgrade apt
RUN add-apt-repository -y ppa:git-core/ppa
RUN apt-get update
RUN apt-get -y dist-upgrade

# install universally common tools
RUN apt-get install -y \
    software-properties-common \
    libreadline6-dev \
    libreadline6 \
    git-core \
    unzip \
    sudo \
    curl \
    wget \
    zip

# clean up apt, temp files etc. for smallest base img
RUN apt-get clean && \
    rm -rf /var/lib/apt/lists/* /tmp/* /var/tmp/* && \
    apt-get autoremove -y
