#!/usr/bin/env bash
SCRIPT_DIR=$( cd -- "$( dirname -- "${BASH_SOURCE[0]}" )" &> /dev/null && pwd )

ansible-playbook  -i inventories/rbr deploy_postgres.yml 

echo "run 'forkstat -e all -S' in case of any problems"