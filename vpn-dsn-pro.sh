#!/usr/bin/expect -f

spawn /opt/cisco/anyconnect/bin/./vpn connect https://portal.virtualdatacenter.telefonica.es/dsn-pro

expect "Username: *"

send -- "******\n"

expect "Password:"

send -- "*****\n"

expect "accept? *"

send -- "y\n"

interact
