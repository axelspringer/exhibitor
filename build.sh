#!/bin/bash

build() {
  EXHIBITOR_VERSION=$1
  ZOOKEEPER_VERSION=$2

  TAG=${EXHIBITOR_VERSION}-${ZOOKEEPER_VERSION}

# base
  docker build \
    -t axelspringer/exhibitor \
    --compress \
    --build-arg ZOOKEEPER_VERSION=${ZOOKEEPER_VERSION} \
    --build-arg EXHIBITOR_VERSION=${EXHIBITOR_VERSION} \
    . || exit $?

# tag
  echo
  echo Tagging axelspringer/exhibitor:${TAG}
  docker tag axelspringer/exhibitor axelspringer/exhibitor:${TAG} \
    || exit $?
}

#     Exhibitor   ZooKeeper
build "1.7.0"	  	"3.4.11"