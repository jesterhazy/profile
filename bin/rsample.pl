#!/usr/bin/perl

use strict;
use warnings;

my $N = shift;
my $k;
my @r;

while(<>) {
  if(++$k <= $N) {
    push @r, $_;
  } elsif(rand(1) <= ($N/$k)) {
    $r[rand(@r)] = $_;
  }
}

print @r;