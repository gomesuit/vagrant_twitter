#!/bin/sh

. /etc/global.rc

MAVEN_HOME="/usr/local/maven"
MAVEN_SRC="apache-maven-3.2.5"

\rm -rf ${MAVEN_HOME}

cd /usr/local
tar zxf ${SRC_HOME}/${MAVEN_SRC}-bin.tar.gz
mv ${MAVEN_SRC} ${MAVEN_HOME}

echo "export PATH=${MAVEN_HOME}/bin:\$PATH" >> ~/.bashrc

#mvn archetype:create -DgroupId=myclass -DartifactId=amazonApi
