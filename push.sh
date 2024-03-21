#!/bin/sh
docker tag racer dgslaughter/racer
docker login -u dgslaughter
Solutions1967!
docker push dgslaughter/racer
