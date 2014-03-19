# Cookbook Name:: kitchen_mysql
# Recipe:: webserver
#
# Copyright (C) 2014 Emiliano Berenbaum
#
# All rights reserved - Do Not Redistribute
#


group node['kitchen_mysql']['group']

user node['kitchen_mysql']['user'] do 
	group node['kitchen_mysql']['group'] 
	system true
	shell '/bin/bash'
end


#=========================
# APACHE
#-------------------------
include_recipe 'apache2'

# Disable default site
apache_site '000-default' do
	enable false
end

# Create apache  config
template "#{node['apache']['dir']}/sites-available/#{node['kitchen_mysql']['config']}" do
	source 'apache2.conf.erb'
	notifies :restart, 'service[apache2]'
end	


# Create document root
directory "#{node['kitchen_mysql']['document_root']}" do
	action :create 
	recursive true
end

# Write site
cookbook_file "#{node['kitchen_mysql']['document_root']}/index.html" do
	mode '0644'  
end

# Enable kitchen_mysql
apache_site "#{node['kitchen_mysql']['config']}" do
	enable true

end


