#
# Cookbook Name:: mysql
# Recipe:: git
#
# Copyright (C) 2014 Emiliano Berenbaum
# 
# All rights reserved - Do Not Redistribute
#


if node['platform'] == "ubuntu" && node['platform_version'].to_f <= 10.04
  package "git-core"
else
  package "git"
end 

log "Well that was too easy" 

