# Start from debian jessie-slim and oracle jdk 8
FROM mbe1224/docker-debian-oracle-java:jessie-slim-jdk8

# Setup SCALA_HOME
ENV SCALA_HOME=/usr/share/scala

# Install Scala 2.11.11
RUN SCALA_VERSION=2.11.11 && \
    SCALA_SHA256_SUM=12037ca64c68468e717e950f47fc77d5ceae5e74e3bdca56f6d02fd5bfd6900b && \
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