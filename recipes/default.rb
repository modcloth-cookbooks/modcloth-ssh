#
# Cookbook Name:: ssh
# Recipe:: default 
#
# Copyright ModCloth, Inc.
#
# All rights reserved - Do Not Redistribute
#

case node["platform"]
when 'smartos'
  include_recipe "ssh::smartos"
when 'centos'
  include_recipe "ssh::centos"
else
  include_recipe "ssh::ubuntu"
end

