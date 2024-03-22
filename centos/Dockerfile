FROM centos:7

# INSTALL DEPENDENCIES
RUN yum update -y -q \
 && yum install -y -q wget \
 && yum clean all -y -q

# INSTALL PVS-Studio
RUN wget -q -O /etc/yum.repos.d/viva64.repo \
 https://files.pvs-studio.com/etc/viva64.repo \
 && yum install -y -q pvs-studio strace \
 && pvs-studio --version \
 && yum clean all -y -q
