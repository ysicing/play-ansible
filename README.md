# play-ansible

```
git clone https://github.com/ysicing/play-ansible.git

cd play-ansible

# 安装ansible
./install.sh

# 编辑inventory.ini,添加节点ip(已配置ssh信任登录)

# 执行初始化
ansible-playbook init.yml 

```

## docker

```
docker pull ysicing/ansible
docker run -it --rm ysicing/ansible bash
cp inventory.ini.example inventory.ini
# 编辑inventory.ini,添加节点ip

# 执行初始化
ansible-playbook init.yaml
```

## roles

```
all.yaml init + docker
init.yaml 初始化系统
docker.yaml 安装docker
```