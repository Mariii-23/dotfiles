#!/bin/bash

# ############################################################
# GET container id

container_id() {
  container_name=$1
  container_id=$(docker ps --format "{{.ID}} {{.Names}}" | grep $container_name | awk '{print $1}')
  if [ -z "$container_id" ]; then
    echo "Container name not found"
  else
    echo $container_id
  fi
}

alias tenant='container_id tenant-manager'
alias tickets='container_id tickets-management'
alias frontend='container_id frontend'
# ############################################################
#
#
# See logs

log() {
  container=$1
  shift

  container_id=$(container_id $container)
  if [ -n "$container_id" ]; then
    docker logs $container_id "$@"
  else
    echo "No logs found for container: $container"
  fi
}
# ############################################################
#
#
full_container_id() {
  container_name=$1
  container_id=$(container_id $container_name)
  if [ -n "$container_id" ]; then
	full_container_id=$(sudo ls /var/lib/docker/containers | grep $container_id)
    	echo $full_container_id
  else
    echo "No logs found for container: $container"
  fi
}

# Clean logs
trun() {
  container_name=$1
  container_id=$(full_container_id $container_name)
  container=/var/lib/docker/containers/$container_id/$container_id-json.log

  sudo truncate -s 0 $container
}

