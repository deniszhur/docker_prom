install:
HOSTNAME=$(hostname) docker stack deploy -c docker-stack.yml prom