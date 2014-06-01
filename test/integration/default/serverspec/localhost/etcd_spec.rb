require 'spec_helper'

describe command('which etcd') do
  it { should return_exit_status 0 }
  its(:stdout) { should match '/usr/local/bin/etcd' }
end

describe service('etcd') do
  it { should be_enabled }
  it { should be_running }
end

describe file('/usr/local/bin/etcd') do
  it { should be_file }
  it { should be_executable }
  it { should be_owned_by 'root' }
  it { should be_grouped_into 'root' }
end
