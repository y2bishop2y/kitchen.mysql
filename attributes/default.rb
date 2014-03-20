
default['kitchen_mysql']['user']  = 'medlista'
default['kitchen_mysql']['group'] = 'medlista'

default['kitchen_mysql']['name']   = 'kitchen_mysql'
default['kitchen_mysql']['config'] = 'kitchen_mysql.conf'
default['kitchen_mysql']['document_root'] = '/srv/apache/kitchen_mysql'

default['kitchen_mysql']['database']['host']     = 'localhost'
default['kitchen_mysql']['database']['username'] = 'root'
default['kitchen_mysql']['database']['password'] = node['mysql']['server_root_password']
default['kitchen_mysql']['database']['dbname']   = 'medlista'