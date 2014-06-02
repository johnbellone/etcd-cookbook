#
# Author:: John Bellone (<jbellone@bloomberg.net>)
# Cookbook Name:: etcd-cookbook
# Recipe:: default
#
# Copyright (C) 2014 Bloomberg Finance L.P.
#
include_recipe 'runit::default'

directory node[:etcd][:log_dir]

runit_service 'etcd' do
  default_logger true
  options({
    data_dir: node[:etcd][:configuration][:data_dir],
    log_dir: node[:etcd][:log_dir]
  })
end
