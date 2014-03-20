# Cookbook Name:: kitchen_mysql
# Recipe:: default
#
# Copyright (C) 2014 Emiliano Berenbaum
#
# All rights reserved - Do Not Redistribute
#

include_recipe "kitchen_mysql::git"

include_recipe "kitchen_mysql::webserver"
include_recipe "kitchen_mysql::database"
