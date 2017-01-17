FROM registry.access.redhat.com/jboss-fuse-6/fis-java-openshift

# environment END_USER should be set

USER root

# Do something that needs root
RUN echo "Hello, world" > /etc/motd

# Switch to an end user of our choosing ($END_USER), or root by default
USER ${END_USER:-root}

CMD [ "/bin/sh", "-c", "while true; do echo hello world; id; sleep 1; done" ]
