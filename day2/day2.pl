#!/usr/bin/perl -l

use warnings;
use strict;

open(FH, '<', './input_test.txt');

while (<FH>) {
	my $s = $_;
	my $good = 1;
	print "STR = $s";
	my @matches = $s =~ /Game (\d{1,}):((?: \d+ (?:red|blue|green)(?:,|;|$))+)+/gm;
	print "MATCH ID $matches[0]";
	my @max = /\s*(\d+) (red|blue|green)/gm;
	my $l = scalar(@max);
	print "OK now we got $1 sets within this match";
	foreach (@max) {
		print $_;
	}
	#print "$max[0] balls in color @max[1]";
	exit
	
}

close(FH);
