#!/usr/bin/perl
use warnings;
use strict;

while (my $input = <>) {
	chomp($input);
	my @words = split(/\s+/, $input);
	foreach my $w (@words) {
		$w =~ s/[:;]$//;
		print("$w\n");
	}
}
