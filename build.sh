#!/usr/bin/env bash
NOM=tmp-serveur
VERSION=0.0.13
REGISTRY=ghcr.io/noenic
TAG=$REGISTRY/$NOM:$VERSION
INFO="$VERSION build $(date +%Y-%m-%dT%H:%M:%S)"
echo "$INFO"
docker build --rm -t $TAG --build-arg VERSION=$VERSION --build-arg INFO="$INFO" .
docker push $TAG