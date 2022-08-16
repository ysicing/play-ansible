#!/bin/bash

set -e

curl --fail --silent --location -o /tmp/stdlib.sh https://sh.ysicing.me/help/func.sh || {
	curl --fail --silent --location -o /tmp/stdlib.sh https://raw.githubusercontent.com/ysicing/devops-handbook/master/hack/help/func.sh
}

source /tmp/stdlib.sh
rm /tmp/stdlib.sh

run apt-get update

run apt-get install python-pip python-apt -y

mv /usr/bin/pip /usr/bin/pip_old
ln -s /usr/local/bin/pip /usr/bin/pip

run pip install -U pip

run pip install ansible -i https://pypi.tuna.tsinghua.edu.cn/simple
