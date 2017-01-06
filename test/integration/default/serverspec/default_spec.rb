require_relative 'spec_helper'

context "the chef-cloudflarebeat cookbook should have integration tests" do
  describe package('foo') do
    it { should be_installed }
  end
end

=begin

# ServerSpec documentation:
# http://serverspec.org/resource_types.html
#
# See how TestKitchen drives your test runs:
# http://kitchen.ci/docs/getting-started/writing-test (general explanation)
# http://kitchen.ci/docs/getting-started/writing-server-test (serverspec example)

# How TestKitchen finds your tests
# test/integration/default/serverspec/default_spec.rb
# test/integration/[testkitchen suite name]/[test tool]/[fancy name]_spec.rb

# Examples

describe package('gcc') do
  it { should be_installed }
end

describe port(80) do
  it { should be_listening }
  # or fancier
  it { should be_listening.on('127.0.0.1').with('tcp') }
end

describe service('ntpd') do
  it { should be_enabled }
  it { should be_running }
end

describe file('/etc/httpd/conf/httpd.conf') do
  it { should be_symlink } # or be_directory, be_socket
  it { should be_mode 644 }
  it { should be_owned_by 'root' }
  it { should be_grouped_into 'wheel' }

  its(:content) { should match /ServerName www.example.jp/ }
end

=end
