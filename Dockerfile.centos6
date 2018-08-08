FROM centos:6
ENV TOOLCHAIN_NAME omnibus-toolchain
RUN yum update -y && \
  yum install -y \
  autoconf bison flex gcc gcc-c++ gettext glibc-static kernel-devel make m4 \
  ncurses-devel patch rpm-build rpm-sign sudo zlib-devel util-linux wget
RUN curl -L https://omnitruck.chef.io/install.sh | sudo bash -s -- -P $TOOLCHAIN_NAME
RUN groupadd admin && \
  useradd -d /home/omnibus -U -s /bin/bash -m omnibus && \
  echo "omnibus ALL=(ALL) NOPASSWD:ALL" > /etc/sudoers.d/omnibus && \
  chmod 0440 /etc/sudoers.d/omnibus && \
  mkdir -p /var/cache/omnibus && \
  chmod 777 /var/cache/omnibus && \
  mkdir -p /opt/$PROJECT_NAME && \
  chown omnibus /opt/$PROJECT_NAME
USER omnibus
ENV PATH /opt/$TOOLCHAIN_NAME/bin:/usr/local/bin:$PATH
ENV SSL_CERT_FILE /opt/$TOOLCHAIN_NAME/embedded/ssl/certs/cacert.pem
CMD ["/bin/bash"]