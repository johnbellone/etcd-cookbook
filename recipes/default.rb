#
# Author:: John Bellone (<jbellone@bloomberg.net>)
# Cookbook Name:: etcd-cookbook
# Recipe:: default
#
# Copyright (C) 2014 Bloomberg Finance L.P.
#
include_recipe 'etcd::install-source'

directory node[:etcd][:configuration][:data_dir]
template File.join(node[:etcd][:configuration][:data_dir], 'etcd.conf') do
  source 'etcd.conf.erb'
  variables({
    configuration: node[:etcd][:configuration]
  })
end
