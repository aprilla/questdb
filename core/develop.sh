#!/usr/bin/env bash

echo -e "***** Bootstrapping your developer environment; running develop.sh *****"
## mvn clean package -DskipTests -P build-web-console

BUILD_VERSION=$(mvn help:evaluate -Dexpression=project.version -q -DforceStdout)
echo BUILD_VERSION = $BUILD_VERSION

java -p core/target/questdb-"$BUILD_VERSION".jar -m io.questdb/io.questdb.ServerMain -d core/target