#!/bin/bash

sudo swapoff -a
#permanenetly disable swap in /fstab
sudo sed -i '/swap/ s/^/#/' /etc/fstab

#disable selinux
sudo sed -i 's/^SELINUX=enforcing$/SELINUX=disabled/; s/^SELINUX=permissive/SELINUX=disabled/' /etc/selinux/config

#
cat <<EOF | sudo tee -a /etc/hosts

#kubernetes nodes
10.10.1.41 k8s-cos9-master1.sriauronet.lan k8s-cos9-master1
10.10.1.42 k8s-cos9-master2.sriauronet.lan k8s-cos9-master2
10.10.1.43 k8s-cos9-wn1.sriauronet.lan k8s-cos9-wn1
10.10.1.44 k8s-cos9-wn2.sriauronet.lan k8s-cos9-wn2
10.10.1.45 k8s-cos9-wn3.sriauronet.lan k8s-cos9-wn3
10.10.1.46 k8s-cos9-wn4.sriauronet.lan k8s-cos9-wn4
10.10.1.47 k8s-cos9-wn5.sriauronet.lan k8s-cos9-wn5
EOF

sudo dnf install -y iproute-tc

sudo firewall-cmd --add-masquerade --permanent

if [ $HOSTNAME == "k8s-cos9-master1" ] || [ $HOSTNAME == "k8s-cos9-master2" ]; then
    sudo firewall-cmd --permanent --add-port=6443/tcp
    sudo firewall-cmd --permanent --add-port=7946/tcp
    sudo firewall-cmd --permanent --add-port=2379-2380/tcp
    sudo firewall-cmd --permanent --add-port=10250/tcp
    sudo firewall-cmd --permanent --add-port=10251/tcp
    sudo firewall-cmd --permanent --add-port=10252/tcp
else
    sudo firewall-cmd --permanent --add-port=10250/tcp
    sudo firewall-cmd --permanent --add-port=7946/tcp
    sudo firewall-cmd --permanent --add-port=30000-32767/tcp  
fi

sudo firewall-cmd --reload

#show open ports on the firewall
sudo firewall-cmd --list-services
sudo firewall-cmd --list-ports

cat <<EOF | sudo tee /etc/modules-load.d/k8s.conf
overlay
br_netfilter
EOF

sudo modprobe overlay
sudo modprobe br_netfilter

cat <<EOF | sudo tee -a /etc/sysctl.d/k8s.conf
net.bridge.bridge-nf-call-iptables  = 1
net.ipv4.ip_forward                 = 1
net.bridge.bridge-nf-call-ip6tables = 1
EOF

sudo sysctl --system

export VERSION=1.26
sudo curl -L -o /etc/yum.repos.d/devel:kubic:libcontainers:stable.repo https://download.opensuse.org/repositories/devel:/kubic:/libcontainers:/stable/CentOS_8/devel:kubic:libcontainers:stable.repo
sudo curl -L -o /etc/yum.repos.d/devel:kubic:libcontainers:stable:cri-o:$VERSION.repo https://download.opensuse.org/repositories/devel:kubic:libcontainers:stable:cri-o:$VERSION/CentOS_8/devel:kubic:libcontainers:stable:cri-o:$VERSION.repo

sudo dnf install -y cri-o

sudo systemctl enable crio

cat <<EOF | sudo tee /etc/yum.repos.d/kubernetes.repo
[kubernetes]
name=Kubernetes
baseurl=https://pkgs.k8s.io/core:/stable:/v1.29/rpm/
enabled=1
gpgcheck=1
gpgkey=https://pkgs.k8s.io/core:/stable:/v1.29/rpm/repodata/repomd.xml.key
exclude=kubelet kubeadm kubectl cri-tools kubernetes-cni
EOF

sudo yum install -y kubelet kubeadm kubectl --disableexcludes=kubernetes

sudo systemctl enable kubelet

echo "Rebooting in 10 secs"
sleep 10
sudo reboot