#!/usr/bin/perl
use warnings;
use strict;

sub trim {
	my $word = shift;
	$word =~ s/[,:;\"\'\)\]\}]*$//;	# trailing
	$word =~ s/^[,:;\"\'\(\[\{]*//;	# leading
	return $word
}

while (my $input = <>) {
	chomp($input);
	my @words = split(/\s+/, $input);
	foreach my $w (@words) {
		$w = trim($w);
		print("$w\n");
	}
}
