require 'spec_helper'

describe command('which etcdctl') do
  it { should return_exit_status 0 }
  its(:stdout) { should match '/usr/local/bin/etcdctl' }
end

describe file('/usr/local/bin/etcdctl') do
  it { should be_file }
  it { should be_executable }
  it { should be_owned_by 'root' }
  it { should be_grouped_into 'root' }
end
