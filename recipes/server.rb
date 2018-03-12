#
# Cookbook:: iis
# Recipe:: server.rb
#
# Copyright:: 2018, The Authors, All Rights Reserved.
powershell_script 'Install IIS' do
  code 'Add-WindowsFeature Web-Server'
  action :run
end
file 'C:\inetpub\wwwroot\Default.htm' do
  content 'Hello World !'
end
service 'w3svc' do
  action [ :enable, :start ]
end
