FROM registry.access.redhat.com/jboss-fuse-6/fis-java-openshift

ENV END_USER ${END_USER:root}

USER root

# Do something that needs root
RUN echo "Hello, world" > /etc/motd

# Switch to an end user of our choosing ($enduser), or root by default
USER ${END_USER:-root}

