#
# Cookbook Name:: kitchen_mysql
# Recipe:: database 
#
# Copyright (C) 2014 Emiliano Berenbaum
#
# All rights reserved - Do Not Redistribute
#

include_recipe 'mysql::server'
include_recipe 'database::mysql'

mysql_database node['kitchen_mysql']['database']['dbname'] do 
	connection(
		:host     => node['kitchen_mysql']['database']['host'],
		:username => node['kitchen_mysql']['database']['username'],
		:password => node['kitchen_mysql']['database']['password']
	)
	action :create
end
