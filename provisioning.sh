#!/usr/bin/env bash

USER_HOME=$(eval echo ~${SUDO_USER})
APP_HOME=$USER_HOME/sipproject
cd $APP_HOME

#prepare jdk
tar -xzvf prerequisites/jdk.tgz
tar -xzvf prerequisites/jre.tgz
mv jre jdk

#prepare tomcat server
tar -xzvf tomcat-6.0.43.tar.gz
mv prerequisites/apache-tomcat-6.0.43 server

export JAVA_HOME=$APP_HOME/jdk
