#!/bin/perl -w

use strict;
use feature 'say';

sub Square_with_5_distinct_digits{
	my $i = sqrt(10000);

	while (1){
		my $num = ++$i ** 2;
		
		if (scalar uniq(split(//, $num)) >= 5){
			say $num;
			last;
		}
	} 
}

sub uniq {
	my %seen;
	return grep { !$seen{$_}++ } @_;
}


Square_with_5_distinct_digits() # 12769
