yum update -y && yum install vim wget net-tools epel-release rsync -y && reboot
yum install git -y
vim prerequisites.sh
vim inventory.ini
vim install_master.sh
vim /etc/hosts
vim inventory.ini
cat prerequisites.sh 
chmod +x *.sh
ll
./prerequisites.sh 
reboot 
yum install screen reptyr -y
ps aux | grep -i install_master
oc get all
ll
vim install_master.sh 
./install_master.sh 
ssh-keygen 
cat .ssh/id_rsa.pub >> .ssh/authorized_keys 
cat .ssh/id_rsa.pub
ssh master
ssh worker
./install_master.sh 
vim inventory.ini 
vim install_master.sh 
vim prerequisites.sh 
./install_master.sh 
vim install_master.sh 
oc login -u elfaleh -p '3lf@l3h_p@$$w0rd' https://console.faleh.local:8443/
oc login -u elfaleh -p "3lf@l3h_p@$$w0rd" https://console.faleh.local:8443/
oc login -u elfaleh -p "3lf@l3h_p@$$w0rd"
oc login -u elfaleh
oc get pods
oc whoami
oc get projects
oc project openshift-web-console
oc get pods
oc login -u elfaleh
oc login -u elfaleh -p "3lf@l3h_p@$$w0rd" https://console.faleh.local:8443/
vim install_master.sh 
oc login -u elfaleh -p '"3lf@l3h_p@$$w0rd"' https://console.faleh.local:8443/
oc login -u elfaleh -p '3lf@l3h_p@$$w0rd' https://console.faleh.local:8443/
oc login -u elfaleh -p "3lf@l3h_p@$$w0rd" https://console.faleh.local:8443/
vim install_master.sh 
htpasswd -b /etc/origin/master/htpasswd elfaleh "3lf@l3h_p@$$w0rd"
oc login -u elfaleh -p "3lf@l3h_p@$$w0rd" https://console.faleh.local:8443/
oc get pods
oc logs -f webconsole-7fc8759f7b-n5zc7
vim install_master.sh 
oc adm policy add-cluster-role-to-user cluster-admin elfaleh
vim install_master.sh 
helm init --service-account tiller --upgrade
helm --help
cat /etc/hosts
cat .ssh/id_rsa.pub 
oc describe clusterrole.rbac admin basic-user
oc describe clusterrole.rbac admin elfaleh
oc describe clusterrole.rbac elfaleh basic-user
oc describe clusterrole.rbac admin 
oc describe clusterrole.rbac admin  | grep elfaleh
oc describe clusterrole.rbac elfaleh
oc describe clusterrole.rbac admin elfaleh
oc describe clusterrole.rbac cluster-admin
oc describe clusterrole.rbac admin basic-user
oc describe rolebindinng.rbac admin basic-user 
oc describe rolebinding.rbac admin basic-user 
oc login -u elfaleh -p '3lf@l3h_p@$$w0rd'
oc login -u elfaleh -p "3lf@l3h_p@$$w0rd"
oc whoami
htpasswd -b /etc/origin/master/htpasswd elfaleh "3lf@l3h_p@$$w0rd"
oc login -u elfaleh -p "3lf@l3h_p@$$w0rd"
oc get svc
oc get pods
oc logs -f webconsole-7fc8759f7b-n5zc7
oc get all
oc get routes
oc --help
oc expose service webconsole 
oc get routes
oc delete routes webconsole
oc get routes
oc rsh webconsole-7fc8759f7b-n5zc7 
docker ps | grep -i console
docker exec -it 63e4b25adcc7 bash
docker exec -it --user=root  63e4b25adcc7 bash
ifconfig 
curl 172.17.0.1:8443
cat /etc/hots
cat /etc/host
cat /etc/hosts
cat inventory.ini 
curl apps.faleh.local
htpasswd -b /etc/origin/master/htpasswd elfaleh "3lf@l3h_p@$$w0rd"
htpasswd -d /etc/origin/master/htpasswd elfaleh
htpasswd -
htpasswd -D elfaleh
htpasswd -D /etc/origin/master/htpasswd elfaleh
htpasswd -c /etc/origin/master/htpasswd elfaleh
oc login -u elfaleh
oc new-project --help
oc new-project node-mongo --display-name="NodeJS + MongoDB" --description="Create NodeJS + MongoDB instances via Helm Chart"
oc projects
helm repo add bitnami https://charts.bitnami.com/bitnami
vim gluster-endpoints.yaml
oc create -f gluster-endpoints.yaml 
vim ---
apiVersion: v1
kind: Service
metadata:
  name: glusterfs-fstorages
spec:
  ports:
  - port: 1
---
apiVersion: v1
kind: Endpoints
metadata:
  name: glusterfs-fstorages 
subsets:
  - addresses:
      - ip: 167.172.100.36 
    ports:
      - port: 1
  - addresses:
      - ip: 161.35.66.132
    ports:
      - port: 1
vim gluster-pv.yaml
oc create -f gluster-pv.yaml 
oc get pvc
oc get pv
vim gluster-claim.yaml
oc create -f gluster-claim.yaml 
oc get pvc
ll
rm -f helm-v3.3.0-rc.1-linux-amd64.tar.gz.*
ll
helm install mongodb bitnami/mongodb
helm --help
helm status mongodb
oc get all
pc get pvc
oc get pvc
helm uninstall mongodb
oc get pvc
helm install mongodb --persistence.existingClaim=nodejs-gluster-claim bitnami/mongodb
helm install mongodb --persistence.existingClaim=nodejs-gluster-claim bitnami/mongodb
helm install mongodb --persistence.existingClaim='nodejs-gluster-claim' bitnami/mongodb
helm install mongodb --archittechture=standalone --persistence.existingClaim=nodejs-gluster-claim bitnami/mongodb
helm install mongodb --architechture=standalone --persistence.existingClaim=nodejs-gluster-claim bitnami/mongodb
helm install --architechture=standalone --persistence.existingClaim=nodejs-gluster-claim mongodb bitnami/mongodb
helm install -architechture=standalone -persistence.existingClaim=nodejs-gluster-claim mongodb bitnami/mongodb
helm install -persistence.existingClaim=nodejs-gluster-claim mongodb bitnami/mongodb
helm install --persistence.existingClaim=nodejs-gluster-claim mongodb bitnami/mongodb
helm install --set persistence.existingClaim=nodejs-gluster-claim mongodb bitnami/mongodb
oc get all
oc get pods
oc get pvc
oc get replicaset.apps/mongodb-884699f68
oc describe replicaset.apps/mongodb-884699f68
helm uninstall mongodb
helm install --set securityContext.enabled=false --set persistence.existingClaim=nodejs-gluster-claim mongodb bitnami/mongodb
oc get all
oc get pods
oc describe deployment.apps/mongodb
oc get pods
oc get all
oc describe replicaset.apps/mongodb-884699f68
helm uninstall mongodb
helm install mongodb --set volumePermissions.enabled=true --set securityContext.enabled=false --set persistence.existingClaim=nodejs-gluster-claim bitnami/mongodb
oc get all
oc describe replicaset.apps/mongodb-f55f99b95
helm uninstall mongodb
helm install mongodb --set volumePermissions.enabled=true --set persistence.existingClaim=nodejs-gluster-claim bitnami/mongodb
oc describe replicaset.apps mongodb-f55f99b95 
helm uninstall mongodb
helm install stable/mongodb mongodb --set 
helm install mongodb --set volumePermissions.enabled=true --set persistence.existingClaim=nodejs-gluster-claim stable/mongodb
helm repo update
helm install mongodb --set volumePermissions.enabled=true --set persistence.existingClaim=nodejs-gluster-claim stable/mongodb
helm repo stable/mongodb
helm add stable/mongodb
git clone https://git.app.uib.no/caleno/helm-charts.git
helm install mongodb --set volumePermissions.enabled=true --set persistence.existingClaim=nodejs-gluster-claim helm-charts/stable/mongodb
oc get all
helm uninstall mongodb
helm install mongodb --set securityContext.enabled=flast --set persistence.existingClaim=nodejs-gluster-claim helm-charts/stable/mongodb
oc get all
oc describe replicaset.apps/mongodb-d76655957
helm uninstall mongodb
helm install mongodb --set securityContext.enabled=false --set persistence.existingClaim=nodejs-gluster-claim helm-charts/stable/mongodb
oc describe replicaset.apps mongodb-57546dcb98 
oc get all
oc describe pod/mongodb-57546dcb98-c9xd6
oc logs -f pod/mongodb-57546dcb98-c9xd6
oc rsh pod/mongodb-57546dcb98-c9xd6
oc get pvc
oc get pv
oc get replicaset
oc get replicaset mongodb-57546dcb98 
oc describe replicaset mongodb-57546dcb98 
مم
ll
oc get all
oc logs -f pod/mongodb-57546dcb98-c9xd6
oc describe pod mongodb-57546dcb98-c9xd6 
oc get -o yaml pod mongodb-57546dcb98-c9xd6 
oc logs -f pod/mongodb-57546dcb98-c9xd6
oc help
oc logs -f pod/mongodb-57546dcb98-c9xd6
oc logs -f pod/mongodb-57546dcb98-c9xd6 | tail
oc logs -f pod/mongodb-57546dcb98-c9xd6 | tail -f
tail -f | oc logs -f pod/mongodb-57546dcb98-c9xd6
oc logs -f pod/mongodb-57546dcb98-c9xd6
helm uninstall mongodb
helm install mongodb --set securityContext.enabled=false --set persistence.existingClaim=nodejs-gluster-claim helm-charts/stable/mongodb
oc logs -f pod/mongodb-57546dcb98-c9xd6
oc get all
oc describe pods mongodb-57546dcb98-6tnvs 
oc get pods
oc logs -f pods mongodb-57546dcb98-6tnvs
oc get pods
oc logs -f pods mongodb-57546dcb98-6tnvs
helm uninstall mongodb
helm get manifest mongodb
helm list
vim helm-charts/stable/mongodb/values.yaml 
helm install mongodb --set persistence.existingClaim=nodejs-gluster-claim helm-charts/stable/mongodb
oc get all
oc describe replicaset.apps/mongodb-5f467f94c7
oc get sccoc
oc get scc
oc get scc | less
vim helm-charts/stable/mongodb/values.yaml 
vim helm-charts/stable/mongodb/values.schema.json 
vim helm-charts/stable/mongodb/values-production.yaml 
vim gluster-claim.yaml 
vim helm-charts/stable/mongodb/values-production.yaml 
vim helm-charts/stable/mongodb/values.yaml 
helm install mongodb helm-charts/stable/mongodb
oc get all
oc describe replicaset mongodb-5c74bf88d6 
oc logs -f mongodb-5c74bf88d6-m7tnl 
vim helm-charts/stable/mongodb/templates/deployment-standalone.yaml 
vim helm-charts/stable/mongodb/values.yaml 
helm uninstall mongodb
helm install mongodb helm-charts/stable/mongodb
oc logs -f mongodb-85d548b666-dt7rh 
vim helm-charts/stable/mongodb/values.yaml 
helm edit manifest mongodb
helm get manifest mongodb
helm --help
helm get manifest mongodb | grep /opt/bitnami/mongodb/conf/mongodb.conf
helm get manifest mongodb | grep /opt/bitnami/mongodb/conf/mongodb.conf -n20
helm get manifest mongodb | grep /opt/bitnami/mongodb/conf/mongodb.conf -n30
vim helm-charts/stable/mongodb/values.yaml 
oc edit deployment -o yaml mongodb 
oc get all
oc logs -f pod/mongodb-89bffb54b-h5gsz
helm uninstall mongodb
helm install mongodb helm-charts/stable/mongodb/
oc get all
helm install mongodb helm-charts/stable/mongodb/values.yaml 
helm install mongodb helm-charts/stable/mongodb/
oc get all
oc logs -f mongodb-65b5794db6-w4t55 
oc get pod -o yaml mongodb-65b5794db6-w4t55 
helm uninstall mongodb
helm install mongodb helm-charts/stable/mongodb/
oc get pod -o yaml mongodb-65b5794db6-w4t55 
oc get pod -o yaml mongodb-5c74bf88d6-g9lnc 
oc get scc
helm install mongodb --set persistence.existingClaim=nodejs-gluster-claim helm-charts/stable/mongodb
oc get all
oc whoami
oc get replicaset.apps
oc get replicaset
oc describe replicaset mongodb-5f467f94c7 
helm uninstall mongodb
helm install mongodb --set persistence.existingClaim=nodejs-gluster-claim helm-charts/stable/mongodb
oc get all
oc describe replicaset mongodb-d76655957 
oc describe cm
oc get cm
oc get configmap
oc get deplyment
oc get deplymentmap
oc get deployment
oc get deployment mongodb 
oc describe deployment mongodb 
oc get scc 
oc get -o yaml deployment mongdb
oc get -o yaml deployment mongodb 
vim mongosecret.yaml
oc projects
vim mongosecret.yaml
oc projects
vim mongosecret.yaml
oc edit -o yaml deployment mongodb 
oc get scc
oc describe scc anyuid 
oc adm policy add-scc-to-group anyuid system:authenticated
helm list
oc get all
helm uninstall mongodb
helm install mongodb --set persistence.existingClaim=nodejs-gluster-claim helm-charts/stable/mongodb
helm get all
oc get all
oc describe replicaset mongodb-d76655957 
oc adm policy add-scc-to-user anyuid system:serviceaccount:myproject:mysvcacct
oc describe scc anyuid 
oc get all
helm uninstall mongodb
vim helm-charts/stable/mongodb/values.yaml 
helm install mongodb --set persistence.existingClaim=nodejs-gluster-claim helm-charts/stable/mongodb
vim helm-charts/stable/mongodb/values.yaml 
helm install mongodb --set persistence.existingClaim=nodejs-gluster-claim helm-charts/stable/mongodb
oc get all
oc get replicaset mongodb-f77fb5d89 
oc describe replicaset mongodb-f77fb5d89 
oc get pods
oc logs -f mongodb-f77fb5d89-dqbnw 
oc describe deployment mongodb 
oc get deployment -o yaml  mongodb 
oc edit deployment -o yaml  mongodb 
oc get pods mongodb-7b94c8ff4d-nr7ct 
oc get pods mongodb-f77fb5d89-dqbnw 
oc get pods
oc logs -f mongodb-7b94c8ff4d-nr7ct
oc describe pvc nodejs-gluster-claim 
oc describe pv nodejs-pv 
oc get ns
oc edit ns node-mongo 
oc edit ns default 
oc edit ns openshift-node
oc get svcacct
oc get sa
oc whoami
oc login -u elfaleh
oc get sc
oc get sa
oc adm policy add-scc-to-user anyuid system:serviceaccount:node-mongo:builder
oc adm policy add-scc-to-user anyuid system:serviceaccount:node-mongo:deployer
oc adm policy add-scc-to-user anyuid system:serviceaccount:node-mongo:default
oc get all
oc get pods
oc edit pod -o mongodb-7b94c8ff4d-nr7ct 
oc edit pod -o yaml mongodb-7b94c8ff4d-nr7ct 
helm uninstall mongodb
helm install mongodb --set persistence.existingClaim=nodejs-gluster-claim helm-charts/stable/mongodb
oc get all
oc logs -f pod mongosecret.yaml 
oc logs -f mongodb-f77fb5d89-hswdx 
helm uninstall mongodb
vim helm-charts/stable/mongodb/values.
vim helm-charts/stable/mongodb/values.yaml 
helm install mongodb --set persistence.existingClaim=nodejs-gluster-claim helm-charts/stable/mongodb
vim helm-charts/stable/mongodb/values.yaml 
helm install mongodb --set persistence.existingClaim=nodejs-gluster-claim helm-charts/stable/mongodb
oc get all
oc describe pod mongodb-5f467f94c7-pnmgf 
vim helm-charts/stable/mongodb/values.yaml 
oc edit deployment -o yaml mongodb 
oc get all
helm uninstall mongodb
vim helm-charts/stable/mongodb/Chart.yaml 
vim helm-charts/stable/mongodb/OWNERS 
vim helm-charts/stable/mongodb/files/docker-entrypoint-initdb.d/README.md 
vim helm-charts/stable/mongodb/templates/configmap.yaml 
vim helm-charts/stable/mongodb/templates/pvc-standalone.yaml 
vim helm-charts/stable/mongodb/templates/deployment-standalone.yaml 
helm install mongodb --set persistence.existingClaim=nodejs-gluster-claim helm-charts/stable/mongodb
oc get all
oc logs -f mongodb-5c74bf88d6-wqtvf 
oc get pod -o yaml mongodb-5c74bf88d6-wqtvf 
helm uninstall mongodb
cat helm-charts/stable/mongodb/templates/NOTES.txt 
oc logs -f 
oc get all
oc projects
vim helm-charts/stable/mongodb/values.yaml 
vim helm-charts/stable/mongodb/templates/deployment-standalone.yaml 
oc get pvc
oc logs -f mongodb-85d548b666-dt7rh 
vim helm-charts/stable/mongodb/values.yaml 
vim helm-charts/stable/mongodb/templates/pvc-standalone.yaml 
vim helm-charts/stable/mongodb/templates/initialization-configmap.yaml 
vim helm-charts/stable/mongodb/templates/configmap.yaml 
vim helm-charts/stable/mongodb/templates/poddisruptionbudget-arbiter-rs.yaml 
grep -irRl "mountpoint" helm-charts/stable/mongodb/
grep -irRl "mountpoint" helm-charts/stable/mongodb/values.yaml 
grep -irR "mountpoint" helm-charts/stable/mongodb/values.yaml 
vim helm-charts/stable/mongodb/values.yaml 
helm uninstall mongodb
vim helm-charts/stable/mongodb/values.yaml 
vim helm-charts/stable/mongodb/templates/deployment-standalone.yaml 
vim helm-charts/stable/mongodb/values.yaml 
oc get all
oc logs -f mongodb-5c74bf88d6-g9lnc 
vim helm-charts/stable/mongodb/values
vim helm-charts/stable/mongodb/values.yaml 
helm uninstall mongodb
helm install mongodb helm-charts/stable/mongodb
oc get all
oc get pods
helm uninstall mongdb
helm uninstall mongodb
vim helm-charts/stable/mongodb/values.yaml 
helm install mongodb helm-charts/stable/mongodb
oc get secret --namespace node-mongo mongodb -o jsonpath="{.data.mongodb-password}" | base64 --decode)
oc get secret --namespace node-mongo mongodb -o jsonpath="{.data.mongodb-password}" | base64 --decode
export MONGODB_PASSWORD=$(kubectl get secret --namespace node-mongo mongodb -o jsonpath="{.data.mongodb-password}" | base64 --decode)
oc run --namespace node-mongo mongodb-client --rm --tty -i --restart='Never' --image bitnami/mongodb --command -- mongo admin --host mongodb --authenticationDatabase admin -u root -p $MONGODB_ROOT_PASSWORD
vim helm-charts/stable/mongodb/values.yaml 
oc run --namespace node-mongo mongodb-client --rm --tty -i --restart='Never' --image bitnami/mongodb --command -- mongo admin --host mongodb --authenticationDatabase admin -u task1 -p $MONGODB_ROOT_PASSWORD
oc rsh mongodb-55dd949f84-bbjjs 
helm install bitnami/node
helm repo add bitnami https://charts.bitnami.com/bitnami
helm install bitnami/node
helm install nodejs bitnami/node
oc get pods
oc logs -f nodejs-7c6f8f6fb6-tv658
helm uninstall nodejs 
helm install nodejs --set mongodb.install=false bitnami/node
oc get all
oc logs -f pod/nodejs-86476f5486-ztcms
oc get pods
oc logs -f pod/nodejs-86476f5486-ztcms
git clone https://github.com/bitnami/charts.git
ll
cd charts/bitnami/node
vim values.yaml 
helm uninstall mongodb
cd
helm install nodejs-mongodb charts/bitnami/node/
helm install nodejs-mongodb charts/bitnami/mongodb
helm install nodejs-mongodb charts/
helm install nodejs-mongodb charts/bitnami/
helm install nodejs-mongodb charts/bitnami/node/
helm install mongodb helm-charts/stable/mongodb/
helm uninstall nodejs-mongodb
helm list
helm uninstall nodejs
oc get all
oc create secret generic mongosec --from-literal=username=task1 --from-literal=password=t@$k_0n3 --from-literal=database=nodejs
oc get secret
oc get secret -o yaml mongosec 
helm install nodejs --set mongodb.install=false --set externaldb.secretName=mongosec bitnami/node
oc get pods
oc get pods -w
oc logs -f nodejs-6bcf4bfbf9-fvjbl 
bin/bash -ec git clone https://github.com/bitnami/sample-mean.git --branch master /app
/bin/bash -ec git clone https://github.com/bitnami/sample-mean.git --branch master /app
git clone https://github.com/bitnami/sample-mean.git --branch master /app
ll
git clone https://github.com/bitnami/sample-mean.git --branch master /app
mv /app .
ll
cd app/
ll
npm install
ll
ll app/routes.js 
vim app/routes.js 
ll
./run.sh 
vim helm-charts/stable/mongodb/values.yaml 
export MONGODB_ROOT_PASSWORD=$(kubectl get secret --namespace node-mongo mongodb -o jsonpath="{.data.mongodb-root-password}" | base64 --decode)
echo $MONGODB_ROOT_PASSWORD
vim helm-charts/stable/mongodb/values.yaml 
oc get pods
oc describe pod mongodb-55dd949f84-n6bqr 
oc whoami
oc get secret
oc create secret generic mongosec --from-literal=host=Host ntp01--from-literal=username=task1 --from-literal=password=t@$k_0n3 --from-literal=database=nodejs
18-    Hostname 10.31.1.2
19-    ServerAliveInterval 240
20-    User root
21-
22:Host ntp02
23-    Hostname 192.168.30.31
24-    ServerAliveInterval 240
25-    User root
26-
27:Host ntp03
28-    Hostname 161.35.216.250
29-    ServerAliveInterval 240
30-    User root
oc create secret generic mongosec --from-literal=host=mongodb-55dd949f84-n6bqr --from-literal=port=27017/TCP ntp01--from-literal=username=task1 --from-literal=password=t@$k_0n3 --from-literal=database=nodejs
oc create secret generic mongosec --from-literal=host=mongodb-55dd949f84-n6bqr --from-literal=port=27017/TCP --from-literal=username=task1 --from-literal=password=t@$k_0n3 --from-literal=database=nodejs
oc apply secret generic mongosec --from-literal=host=mongodb-55dd949f84-n6bqr --from-literal=port=27017/TCP --from-literal=username=task1 --from-literal=password=t@$k_0n3 --from-literal=database=nodejs
oc delete secret mongosec 
oc create secret generic mongosec --from-literal=host=mongodb-55dd949f84-n6bqr --from-literal=port=27017/TCP --from-literal=username=task1 --from-literal=password=t@$k_0n3 --from-literal=database=nodejs
oc logs -f nodejs-6bcf4bfbf9-fvjbl 
oc get secrets
oc describe secret mongosec 
oc get svc
oc create secret generic mongosec --from-literal=host=mongodb --from-literal=port=27017 --from-literal=username=task1 --from-literal=password=t@$k_0n3 --from-literal=database=nodejs
oc delete secret mongosec 
oc create secret generic mongosec --from-literal=host=mongodb --from-literal=port=27017 --from-literal=username=task1 --from-literal=password=t@$k_0n3 --from-literal=database=nodejs
pc get pods
oc get pods
oc expose svc nodejs 
oc get routes
oc logs -f nodejs-6bcf4bfbf9-fvjbl 
cat /etc/ssh/sshd_config 
vim .ssh/authorized_keys 
vmstat -m
vmstat --he
vmstat -msdp
vmstat -m -s -p -s
vmstat -m -s -p
vmstat -m -s -p /dev/vda1
vmstat -m 30
vmstat -S M 1 10
vmstat -S M 1
vmstat -M
vmstat -w
vmstat -w -n
mman vmstat
man vmstat
vim /var/lib/docker/volumes/metadata.db 
oc get routes
oc login
oc get route
oc create routes
oc get pods
oc get nodes
ls
oc get nodes
oc whoami 
oc login -u system:admin
oc get pods
w
ls 
cat prerequisites.sh 
cat install_master.sh 
ls
cat inventory.ini 
ls
ls openshift-ansible/
cat /etc/hosts
ssh worker
ls
cat /etc/hosts
cat /root/.ssh/id_rsa.pub 
vim /etc/hosts
ssh worker
ssh extworker1.faleh.local 
ssh extworker2.faleh.local 
cat /etc/hosts
ssh 198.199.80.136
ssh extworker2
cat .ssh/authorized_keys 
vim .ssh/authorized_keys 
ifconfig 
ss -tunepl
oc project
history
history | grep login
oc login -u elfaleh -p '3lf@l3h_p@$$w0rd' https://console.faleh.local:8443/
ll
cd helm-charts/
ll
cd stable/
ll
cd mongodb/
ll
vim values.yaml 
vim Chart.yaml 
oc get all
oc get dc
oc project
oc get pods nodejs-6bcf4bfbf9-fvjbl 
oc get all
ansible-playbook -i inventory.ini openshift-ansible/playbooks/openshift-master/openshift_node_group.yml
oc get nodes
ansible-playbook -i inventory.ini openshift-ansible/playbooks/openshift-node/scaleup.yml 
ssh extworker1.faleh.local 
oc get nodes
oc get pods
oc get nodes
oc describe nodes extworker1.faleh.local
oc get csr
screen -r
screen 
ssh extworker1.faleh.local 
ssh extworker2.faleh.local 
scp prerequisites.sh extworker1.faleh.local:/home
scp prerequisites.sh extworker2.faleh.local:/home
ssh extworker1.faleh.local:/ho
ssh extworker1.faleh.local sh /home/prerequisites.sh
ssh extworker2.faleh.local sh /home/prerequisites.sh
ssh extworker2.faleh.local docker ps 
ssh extworker1.faleh.local docker ps 
ls 
cat /etc/hosts
ssh 198.199.80.136
ssh 198.199.80.136134.122.114.27
ssh 134.122.114.27
ls
vim inventory.ini 
ansible-playbook -vv -i inventory.ini openshift-ansible/playbooks/openshift-node/join.yml 
ansible-playbook -vvvv -i inventory.ini openshift-ansible/playbooks/openshift-node/join.yml 
ansible-playbook -vv -i inventory.ini openshift-ansible/playbooks/openshift-node/join.yml 2>errors 1>out
ls 
mkdir scale
mv errors out scale/
cd scale/
vi errors 
vim out 
tail -n 200 out 
screen -r 
screen -r 115457.pts-3.master
cd scale/
tail -n 100 out 
vim /root/openshift-ansible/playbooks/openshift-node/private/join.yml
oc get csr
cd /root/scale/
vim out 
tail 100 out 
oc get csr
oc get nodes
oc get csr
oc get nodes
oc describe node extworker1.faleh.local
oc get nodes
oc get csr
vim 
vim inventory.ini 
cd openshift-ansible/
git status
git pull 
git fetch
git pull
ls
git branch
cd ..
ls
cat install_master.sh 
rm -rf openshift-ansible/
git clone https://github.com/openshift/openshift-ansible.git && cd openshift-ansible && git fetch && git checkout release-3.11 && cd ..
ls 
cd openshift-ansible/
git branch 
git pull
cd ..
screen
ssh extworker1.faleh.local 
ssh worker
vim inventory.ini 
vim /root/openshift-ansible/playbooks/openshift-node/private/join.yml
screen 
oc get nodes
oc get pods
oc get csr
oc describe pods extworker1.faleh.local
oc describe nodess extworker1.faleh.local
oc describe nodes extworker1.faleh.local
ls 
oc get nodes 
oc new-app nginx 
oc scale --replica=5 dc/nginx 
oc get dc
oc project
oc get pods
oc logs -f nginx-1-hj6kr
oc adm policy add-scc-to-user anyuid -z default
oc new-app nginx --name wev
oc get pods
oc describe pods wev-1-cgcts
oc get pods
oc logs -f wev-1-cgcts
oc new-app httpd --name httpd
oc get pods
oc scale --replicas=5 httpd
oc scale --replicas=5 dc/httpd
oc get pods
oc get pods -o wide
oc rsh httpd-1-qv724
oc get pods
oc logs -f httpd-1-7dqs8
oc logs -f mongodb-55dd949f84-n6bqr
ping extworker1.faleh.local 
ssh extworker
ssh extworker1.faleh.local 
oc get pods
oc get pods -o wide
oc logs -f httpd-1-7dqs8
curl https://extworker1.faleh.local:10250/containerLogs/node-mongo/httpd-1-7dqs8/httpd?follow=true
مس 
ls
ls 
oc get pods
oc logs -f httpd-1-7dqs8
ls 
oc get pods
oc logs -f mongodb-55dd949f84-n6bqr
oc logs -f httpd-1-7dqs8
oc get pods
oc rsh mongodb-55dd949f84-n6bqr
cat /etc/hosts
ssh extworker1
ssh extworker1.faleh.local 
hostname
oc rsh httpd-1-7dqs8 
مس 
oc get pods
oc get projects
oc describe project node-mongo
oc edit project node-mongo
oc rsh httpd-1-7dqs8
dig extworker1.faleh.local
ping extworker1.faleh.local:
ping extworker1.faleh.local
oc get nodes
oc logs  httpd-1-7dqs8 
ssh worker
ssh extworker1.faleh.local 
dig @localhost extworker1.faleh.local 
curl ifconfig.me
dig @46.101.141.5 extworker1.faleh.local 
ip a s
cat /etc/hosts
ssh worker1
ssh extworker1.faleh.local 
cat /etc/resolv.conf 
dig @46.101.141.5 master.faleh.local 
dig @46.101.141.5 worker.faleh.local 
cat /etc/resolv.conf 
cat /etc/hosts
dig @198.199.80.136 extworker1.faleh.local
