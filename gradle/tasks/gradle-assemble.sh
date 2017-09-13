#!/bin/bash

set -ex

version=`cat version/number`

cd app

gradle assemble
ls -R
mv build/libs/${APP_NAME}*.jar ../build/${JAR_NAME}-${version}.jar
