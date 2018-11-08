# Start from debian jessie-slim and oracle jdk 8
FROM mbe1224/debian-oracle-java:jessie-slim-jdk8

# Setup SCALA_HOME
ENV SCALA_HOME=/usr/share/scala

# Install Scala 2.12.7
RUN SCALA_VERSION=2.12.7 && \
    SCALA_SHA256_SUM=d65b0db501287a0fed5a78d92c37cc558af52d9b5339e74f5dd6c71fb736d184 && \
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