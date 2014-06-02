#
# Author:: John Bellone (<jbellone@bloomberg.net>)
# Cookbook Name:: etcd-cookbook
# Attribute:: default
#
# Copyright (C) 2014 Bloomberg Finance L.P.
#
default[:etcd][:version] = '0.4.1'
default[:etcd][:install_dir] = '/usr/local/bin'
default[:etcd][:log_dir] = '/var/log/etcd'

default[:etcd][:configuration][:name] = 'etcd-cluster'
default[:etcd][:configuration][:addr] = '127.0.0.1:4001'
default[:etcd][:configuration][:bind_addr] = '127.0.0.1:4001'
default[:etcd][:configuration][:data_dir] = '/etc/etcd'
