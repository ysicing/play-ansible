#!/bin/bash

curl --fail --silent --location -o /tmp/stdlib.sh https://ysicing.me/hack/help/func.sh || {
	exit 1
}

source /tmp/stdlib.sh
rm /tmp/stdlib.sh

run apt-get update

run apt-get install python-pip python-apt -y

mv /usr/bin/pip /usr/bin/pip_old
ln -s /usr/local/bin/pip /usr/bin/pip

run pip install -U pip

run pip install ansible
