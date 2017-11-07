# Start from debian jessie-slim and oracle jdk 8
FROM mbe1224/docker-debian-oracle-java:jessie-slim-jdk8

# Setup SCALA_HOME
ENV SCALA_HOME=/usr/share/scala

# Install Scala 2.12.4
RUN SCALA_VERSION=2.12.4 && \
    SCALA_SHA256_SUM=9554a0ca31aa8701863e881281b1772370a87e993ce785bb24505f2431292a21 && \
    apt-get update && \
    apt-get -y install wget && \
    cd "/tmp" && \
    wget "http://downloads.typesafe.com/scala/${SCALA_VERSION}/scala-${SCALA_VERSION}.tgz" && \
    echo "${SCALA_SHA256_SUM}" "scala-${SCALA_VERSION}.tgz" | sha256sum -c - && \
    tar xzf "scala-${SCALA_VERSION}.tgz" && \
    mkdir "${SCALA_HOME}" && \
    rm "/tmp/scala-${SCALA_VERSION}/bin/"*.bat && \
    mv "/tmp/scala-${SCALA_VERSION}/bin" "/tmp/scala-${SCALA_VERSION}/lib" "${SCALA_HOME}" && \
    ln -s "${SCALA_HOME}/bin/"* "/usr/bin/" && \
    apt-get -y autoremove wget && \
    apt-get -y clean && \
    rm -rf "/tmp/"* \
           "/var/cache/apt" \
           "/usr/share/man" \
           "/usr/share/doc" \
           "/usr/share/doc-base" \
           "/usr/share/info/*" 