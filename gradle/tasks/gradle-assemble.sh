#!/bin/bash

set -ex

version=`cat version/number`

cd app

gradle clean assemble
ls -R
mv build/libs/*.jar ../build/${JAR_NAME}-${version}.jar
