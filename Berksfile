require 'keychain'

berks_api_server = ENV['berks_api_server']
k = Keychain.internet_passwords.where(:server => berks_api_server).first
raise "Unknown Berks API server: #{berks_api_server}" if k.nil?
source URI.escape("https://#{k.account}:#{k.password}@#{berks_api_server}")
source "https://supermarket.getchef.com"

metadata
