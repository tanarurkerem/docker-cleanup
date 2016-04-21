#!/bin/bash
docker run --rm --privileged debian:jessie df -h
docker rm $(docker ps -qa)
docker rmi $(docker images -q --filter "dangling=true")
docker volume rm $(docker volume ls -qf dangling=true)
docker run --rm --privileged debian:jessie df -h
