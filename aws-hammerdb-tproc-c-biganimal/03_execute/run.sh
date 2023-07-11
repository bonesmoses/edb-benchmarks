#!/bin/bash -eux

export ANSIBLE_PIPELINING=true
export ANSIBLE_SSH_PIPELINING=true
export ANSIBLE_HOST_KEY_CHECKING=false
TERRAFORM_PROJECT_PATH="../terraform"

# Run the benchmark
ansible-playbook \
	-i "${TERRAFORM_PROJECT_PATH}/inventory.yml" \
	-e "@../vars.yml" \
	-e "terraform_project_path=${TERRAFORM_PROJECT_PATH}" \
	-e "results_directory=${RESULTS_DIRECTORY}/tprocc-data" \
	./playbook-tprocc-run.yml

# Copy infrastructure.yml and vars.yml
cp "../infrastructure.yml" "$RESULTS_DIRECTORY/tprocc-data"
cp "../vars.yml" "$RESULTS_DIRECTORY/tprocc-data"
