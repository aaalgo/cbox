from milkymilk/centos-6.7
MAINTAINER Wei Dong
RUN yum install -y wget yum-utils centos-release-scl tar xz
RUN yum-config-manager --enable rhel-server-rhscl-6-rpms
RUN yum install -y devtoolset-4-gcc-c++ devtoolset-4-gdb devtoolset-4-elfutils devtoolset-4-oprofile ; ln -s /opt/rh/devtoolset-4/enable /etc/profile.d/devtoolset-4.sh
RUN wget https://nodejs.org/dist/v7.2.1/node-v7.2.1-linux-x64.tar.xz ; tar xf node-v7.2.1-linux-x64.tar.xz -C /usr/local --strip-components=1 ; rm node-v7.2.1-linux-x64.tar.xz
RUN wget https://cmake.org/files/v3.7/cmake-3.7.1-Linux-x86_64.tar.gz ; tar xf cmake-3.7.1-Linux-x86_64.tar.gz -C /usr/local --strip-components=1 ; rm cmake-3.7.1-Linux-x86_64.tar.gz
RUN yum install -y mysql-devel
RUN yum install -y cvs subversion git
RUN echo 'export PATH=/opt/cbox/bin:$PATH' > /etc/profile.d/cbox.sh
