export FIREWALLD_DEFAULT_ZONE=`firewall-cmd --get-default-zone`
echo ${FIREWALLD_DEFAULT_ZONE}
firewall-cmd --add-port 22623/tcp --permanent --zone=${FIREWALLD_DEFAULT_ZONE}
firewall-cmd --add-port 6443/tcp --permanent --zone=${FIREWALLD_DEFAULT_ZONE}
firewall-cmd --add-service https --permanent --zone=${FIREWALLD_DEFAULT_ZONE}
firewall-cmd --add-service http --permanent --zone=${FIREWALLD_DEFAULT_ZONE}
firewall-cmd --add-port 9000/tcp --permanent --zone=${FIREWALLD_DEFAULT_ZONE}

firewall-cmd --reload
firewall-cmd --list-ports
setenforce 0

systemctl restart haproxy

dnf install -y policycoreutils-python
cat /var/log/audit/audit.log | audit2allow -M haproxy
semodule -i haproxy.pp