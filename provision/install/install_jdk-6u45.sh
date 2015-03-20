#!/bin/sh

. /etc/global.rc

cd ${SRC_HOME}
/bin/sh jdk-6u45-linux-x64-rpm.bin

echo 'export JAVA_HOME=/usr/java/jdk1.6.0_45/' >> ~/.bashrc
echo 'export JRE_HOME=/usr/java/jdk1.6.0_45/jre/' >> ~/.bashrc
echo 'export CLASSPATH=.:$JAVA_HOME/lib:$JAVA_HOME/lib/tools.jar' >> ~/.bashrc
echo 'export PATH=$JAVA_HOME/bin:$JRE_HOME/bin:$PATH' >> ~/.bashrc

\rm -f jdk-6u45-linux-amd64.rpm
\rm -f sun-javadb-client-10.6.2-1.1.i386.rpm
\rm -f sun-javadb-common-10.6.2-1.1.i386.rpm
\rm -f sun-javadb-core-10.6.2-1.1.i386.rpm
\rm -f sun-javadb-demo-10.6.2-1.1.i386.rpm
\rm -f sun-javadb-docs-10.6.2-1.1.i386.rpm
\rm -f sun-javadb-javadoc-10.6.2-1.1.i386.rpm
