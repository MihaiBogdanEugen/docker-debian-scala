# Start from debian stretch-slim and oracle jdk 8u144
FROM mbe1224/debian-oraclejdk:stretch-slim-8u144

# Setup SCALA_HOME
ENV SCALA_HOME=/usr/share/scala

# Install Scala 2.12.3
RUN SCALA_VERSION=2.12.3 && \
    SCALA_SHA256_SUM=2b796ab773fbedcc734ba881a6486d54180b699ade8ba7493e91912044267c8c && \
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