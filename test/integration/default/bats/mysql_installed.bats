#!/usr/bin/env bats

@test "mysql is running" {
  run mysqlshow -uroot -prootpass
  [ "$status" -eq 0 ]
}