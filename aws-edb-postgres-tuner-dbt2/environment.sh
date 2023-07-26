#!/bin/bash -eux
# Generic
export BUCKET_NAME="${BUCKET_NAME:=ebac-reports}"
export BENCHMARK_NAME="${BENCHMARK_NAME:=AWS_DBT2_RDS}"

# Credentials
export REPO_USERNAME="${REPO_USERNAME:=<secret>}"
export REPO_PASSWORD="${REPO_PASSWORD:=<secret>}"

# Ansible
export ANSIBLE_VERBOSITY="${ANSIBLE_VERBOSITY:=0}"

# Terraform
export SSH_USER="${SSH_USER:=rocky}"

# DBT2
export DBT2_DURATION="${DBT2_DURATION:=10000}"
export DBT2_WAREHOUSE="${DBT2_WAREHOUSE:=3600}"
export DBT2_CONNECTIONS="${DBT2_CONNECTIONS:=72}"
