# Cookbook Name:: kitchen_mysql
# Recipe:: default
#
# Copyright (C) 2013 Emiliano Berenbaum
#
# All rights reserved - Do Not Redistribute
#


group node['kitchen_mysql']['group']

user node['kitchen_mysql']['user'] do 
	group node['kitchen_mysql']['group'] 
	system true
	shell '/bin/bash'
end



include_recipe "kitchen_mysql::git"

include_recipe 'apache2'
