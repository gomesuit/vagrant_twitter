#!/bin/sh

. /etc/global.rc

SQLITE_HOME="/usr/local/sqlite"
SQLITE_SRC="sqlite-autoconf-3080801"

\rm -rf ${SQLITE_HOME}
\rm -rf ${SRC_HOME}/${SQLITE_SRC}

#yum -y install apr-devel apr-util-devel zlib-devel

cd ${SRC_HOME}
tar zxf ${SRC_HOME}/${SQLITE_SRC}.tar.gz
cd ${SQLITE_SRC}
./configure --prefix=${SQLITE_HOME}
make
make install

echo "export PATH=${SQLITE_HOME}/bin:\$PATH" >> ~/.bashrc

\rm -rf ${SRC_HOME}/${SQLITE_SRC}
