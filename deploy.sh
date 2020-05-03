#!/bin/bash

set -xe

if [ "$1" == "bash" ]; then
    exec /bin/bash
fi

IP=${IP:-192.168.100.101}
PORT=${PORT:-22}
USER=${USER:-root}
PASS=${PASS:-vagrant}

cat > /etc/ansible/inventory.ini <<EOF
[all]
${IP} ansible_port=${PORT} ansible_user=${USER} ansible_password=${PASS}
EOF

if [ "$ENABLEDOCKER"x == "true"x ]; then
    ansible-playbook all.yaml  
else
    ansible-playbook init.yaml  
fi