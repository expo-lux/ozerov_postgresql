#!/usr/bin/env bash

ansible-playbook  -i inventories/rbr deploy_postgres.yml 
# ansible-playbook -i inventories/rbr test_postgres.yml

echo "run 'forkstat -e all -S' in case of any problems"