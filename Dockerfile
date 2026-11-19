FROM ghcr.io/apache/hadoop:3.3.6

USER root

# Set Hadoop environment variables
ENV HADOOP_HOME=/opt/hadoop
ENV HADOOP_CONF_DIR=/opt/hadoop/etc/hadoop
ENV PATH="${HADOOP_HOME}/bin:${HADOOP_HOME}/sbin:${PATH}"

# Create directories for Hadoop data
RUN mkdir -p /data/name /data/data /app

WORKDIR /app

# Keep container running for Hadoop commands
CMD ["bash"]