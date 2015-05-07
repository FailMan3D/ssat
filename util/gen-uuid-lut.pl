#!/usr/bin/env perl
use strict;
print STDOUT 'insert or ignore into _sqlite_unhexhack_lookup_tbl values';
foreach my $x (0 .. 255) {
	printf '(\'%02X\',X\'%02X\'),', $x, $x;
	print STDOUT !(($x - 4) % 9) ? "\n" : ' ';
}
