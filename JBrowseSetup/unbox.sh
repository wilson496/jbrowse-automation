#!/bin/bash

set -e
set -u
set -o pipefail

sudo apt install ansible

ansible-playbook JBrowse.yml

