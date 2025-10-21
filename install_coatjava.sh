#!/bin/bash

export COATJAVA_VERSION=13.4.0

wget https://github.com/JeffersonLab/coatjava/releases/download/${COATJAVA_VERSION}/coatjava-${COATJAVA_VERSION}.tar.gz
tar -xzf coatjava-${COATJAVA_VERSION}.tar.gz

# Let's say it contains coatjava-${COATJAVA_VERSION}/lib/coatjava-${COATJAVA_VERSION}.jar
mvn install:install-file \
  -Dfile=coatjava-${COATJAVA_VERSION}/lib/clas/coat-libs-${COATJAVA_VERSION}.jar \
  -DgroupId=org.jlab \
  -DartifactId=coat-libs \
  -Dversion=${COATJAVA_VERSION} \
  -Dpackaging=jar
