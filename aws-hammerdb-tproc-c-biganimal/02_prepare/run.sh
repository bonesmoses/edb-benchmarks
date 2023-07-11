#!/bin/bash -eux

export ANSIBLE_PIPELINING=true
export ANSIBLE_SSH_PIPELINING=true
export ANSIBLE_HOST_KEY_CHECKING=false
export ANSIBLE_SSH_ARGS="-o ForwardX11=no -o UserKnownHostsFile=/dev/null"
TERRAFORM_PROJECT_PATH="../terraform"

ansible-playbook \
	-i "${TERRAFORM_PROJECT_PATH}/inventory.yml" \
	-e "@../vars.yml" \
	-e "terraform_project_path=${TERRAFORM_PROJECT_PATH}" \
	./playbook-tprocc-build-db.yml
