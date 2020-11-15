#!/bin/bash

# install the packages for Ansible
yum -y --enablerepo=epel install ansible pyOpenSSL
curl -o ansible.rpm https://releases.ansible.com/ansible/rpm/release/epel-7-x86_64/ansible-2.6.5-1.el7.ans.noarch.rpm
yum -y --enablerepo=epel install ansible.rpm

# checkout openshift-ansible repository
[ ! -d openshift-ansible ] && git clone https://github.com/openshift/openshift-ansible.git
cd openshift-ansible && git fetch && git checkout release-3.11 && cd ..

mkdir -p /etc/origin/master/
touch /etc/origin/master/htpasswd

# check pre-requisites
ansible-playbook -i inventory.ini openshift-ansible/playbooks/prerequisites.yml

# deploy cluster
ansible-playbook -i inventory.ini openshift-ansible/playbooks/deploy_cluster.yml
htpasswd -b /etc/origin/master/htpasswd elfaleh "3lf@l3h_p@$$w0rd"
oc adm policy add-cluster-role-to-user cluster-admin elfaleh

#curl https://raw.githubusercontent.com/kubernetes/helm/master/scripts/get > get_helm.sh
#chmod +x get_helm.sh
#./get_helm.sh

wget https://get.helm.sh/helm-v3.3.0-rc.1-linux-amd64.tar.gz
tar -zxvf helm-v3.3.0-rc.1-linux-amd64.tar.gz
mv linux-amd64/helm /usr/local/bin/helm

kubectl --namespace kube-system create serviceaccount tiller
kubectl create clusterrolebinding tiller --clusterrole cluster-admin --serviceaccount=kube-system:tiller
helm init --service-account tiller --upgrade

oc login -u elfaleh -p '3lf@l3h_p@$$w0rd' https://console.faleh.local:8443/
