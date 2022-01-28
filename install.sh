#!/bin/bash

HOSTNAME=$(hostname) docker stack deploy -c docker-stack.yml prom

# for raspberrypi you should use budry/cadvisor-arm in docker-stack.yml
