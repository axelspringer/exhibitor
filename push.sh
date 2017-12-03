#!/bin/bash

push() {
  EXHIBITOR_VERSION=$1
  ZOOKEEPER_VERSION=$2

  TAG=${EXHIBITOR_VERSION}-${ZOOKEEPER_VERSION}

# base
  echo
  echo Pushing axelspringer/exhibitor:${TAG}
  docker push axelspringer/exhibitor:${TAG} || exit $?

}

#    Exhibitor  ZooKeeper
push "1.7.0"	"3.4.11"
