from milkymilk/centos-6.7
MAINTAINER Wei Dong
RUN yum install -y wget yum-utils centos-release-scl tar xz glibc-static cvs subversion git unzip vim-enhanced autojump
RUN rpm -ivh https://dl.fedoraproject.org/pub/epel/epel-release-latest-6.noarch.rpm
RUN yum-config-manager --enable rhel-server-rhscl-6-rpms
RUN wget https://copr.fedorainfracloud.org/coprs/praiskup/autotools/repo/epel-6/praiskup-autotools-epel-6.repo -O /etc/yum.repos.d/autotools.repo
RUN yum install -y devtoolset-3-gcc-c++ devtoolset-3-gcc-gfortran devtoolset-3-gdb devtoolset-3-elfutils devtoolset-3-oprofile ; ln -s /opt/rh/devtoolset-3/enable /etc/profile.d/devtoolset-3.sh
RUN yum install -y autotools-latest; ln -s /opt/rh/autotools-latest/enable /etc/profile.d/autotools.sh
RUN rpm -ivh http://dev.mysql.com/get/Downloads/MySQL-5.7/mysql-community-common-5.7.17-1.el6.x86_64.rpm; rpm -ivh http://dev.mysql.com/get/Downloads/MySQL-5.7/mysql-community-libs-5.7.17-1.el6.x86_64.rpm; rpm -ivh http://dev.mysql.com/get/Downloads/MySQL-5.7/mysql-community-devel-5.7.17-1.el7.x86_64.rpm
RUN wget https://nodejs.org/dist/v7.2.1/node-v7.2.1-linux-x64.tar.xz ; tar xf node-v7.2.1-linux-x64.tar.xz -C /usr/local --strip-components=1 ; rm node-v7.2.1-linux-x64.tar.xz
RUN wget https://cmake.org/files/v3.7/cmake-3.7.1-Linux-x86_64.tar.gz ; tar xf cmake-3.7.1-Linux-x86_64.tar.gz -C /usr/local --strip-components=1 ; rm cmake-3.7.1-Linux-x86_64.tar.gz
ADD cbox.sh /etc/profile.d/cbox.sh
ADD cbox /opt/
