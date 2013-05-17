#
# Cookbook Name:: ssh
# Recipe:: ubuntu
#
# Copyright ModCloth, Inc.
#
# All rights reserved - Do Not Redistribute
#

service 'ssh' do
  action :enable
  supports :enable => true, :disable => true, :restart => true
end

template '/etc/ssh/sshd_config' do
  source 'sshd_config.erb'
  notifies :restart, resources(:service => 'ssh')
end

