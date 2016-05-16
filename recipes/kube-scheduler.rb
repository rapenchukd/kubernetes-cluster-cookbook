#
# Cookbook: kubernetes-cluster
# License: Apache 2.0
#
# Copyright 2015-2016, Bloomberg Finance L.P.
#

template '/etc/kubernetes/scheduler' do
  mode '0640'
  source 'kube-scheduler.erb'
  variables(
    kubernetes_api_port: node['kubernetes']['insecure']['apiport'],
    etcd_cert_dir: node['kubernetes']['secure']['directory']
  )
end
