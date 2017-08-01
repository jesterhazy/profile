#!/usr/bin/perl

use strict;
use warnings;

my ($prob) = 0;
my ($s, $n) = @ARGV;

if (not defined $s) {
    print "Usage: $0 sample-size input-size\n       or\n       $0 probability\n"
}

elsif (not defined $n) {
    $prob = $s;
}

else {
    $prob = ($s / $n);
}

while(<STDIN>) {
	if (rand() <= $prob) {
		print $_;
		$s--;
	}

    last if $s == 0;
}