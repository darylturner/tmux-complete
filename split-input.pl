#!/usr/bin/perl
use warnings;
use strict;

while (my $input = <>) {
	my @words = split(/\s+/, $input);
	foreach my $w (@words) {
		chomp($w);
		print("$w\n");
	}
}
