#!/usr/bin/env bats

@test "user and group created " {
 	run getent passwd medlista
	[ "$status" -eq 0 ]
}