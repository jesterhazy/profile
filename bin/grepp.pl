#!/usr/bin/perl
use strict;
use warnings;

my $pattern = shift;

while (<>) {
    print if /$pattern/;
}