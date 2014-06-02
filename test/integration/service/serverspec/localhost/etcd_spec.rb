require 'spec_helper'

describe service('etcd') do
  it { should be_running }
  it { should be_enabled }
end

describe port(4001) do
  it { should be_listening.with('tcp') }
end
