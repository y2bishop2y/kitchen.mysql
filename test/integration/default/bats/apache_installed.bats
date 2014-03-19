#!/usr/bin/env bats

@test "apache is running" {
  run service apache2 status
  [ "$status" -eq 0 ]
}

@test "apache site installed correctly" {
  run cat /srv/apache/kitchen_mysql/index.html
 
  [ "$status" -eq 0 ]	
}

