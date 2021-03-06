#
# Author:: John Bellone (<jbellone@bloomberg.net>)
# Cookbook Name:: etcd-cookbook
# Recipe:: install-source
#
# Copyright (C) 2014 Bloomberg Finance L.P.
#
include_recipe 'golang::default'

directory "#{node[:go][:gopath]}/src/github.com/coreos" do
  owner 'root'
  group 'root'
  mode '00755'
  recursive true
  action :create
end

git "#{node[:go][:gopath]}/src/github.com/coreos/etcd" do
  repository "https://github.com/coreos/etcd.git"
  reference "v#{node[:etcd][:version]}"
  action :checkout
end

git "#{node[:go][:gopath]}/src/github.com/coreos/etcdctl" do
  repository "https://github.com/coreos/etcdctl.git"
  reference "v#{node[:etcd][:version]}"
  action :checkout
end

golang_package 'github.com/coreos/etcd'
golang_package 'github.com/coreos/etcdctl'

link "#{node[:etcd][:install_dir]}/etcd" do
  to "#{node[:go][:gobin]}/etcd"
end

link "#{node[:etcd][:install_dir]}/etcdctl" do
  to "#{node[:go][:gobin]}/etcdctl"
end
