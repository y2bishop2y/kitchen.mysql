name            "kitchen_mysql"
maintainer 	 	"Emiliano Berenbaum"
license     	"Apache 2.0"
description 	"Testing Kitchen/Chef mysql"
long_description IO.read(File.join(File.dirname(__FILE__), 'README.md'))

version     	"1.0.0"


recipe   		"kitchen_mysql", 	  "Includes the reipe to configure server"
recipe			"kitchen_mysql::git", "Installs git"

depends 'apache2', '~> 1.8.0'
