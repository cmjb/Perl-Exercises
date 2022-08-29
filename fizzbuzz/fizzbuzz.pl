#!/usr/bin/perl
#################################
##
##	fizzbuzz.pl - 25/08/2020
##	by Christopher Byrne
##
##	Script was tested with Perl 5.30.0
##	on Ubuntu 20.04
##
#################################

use strict;
use warnings;

# param1: starting point, default is 1
# param2: end point, default is 100
sub main {
	my ($start, $end) = @_;
	
	if(!$start) {
		$start = 1;
	}
	if(!$end) {
		$end = 100;
	}

	for(my $i=$start; $i <= $end; $i++) {
		if($i % 3 == 0) {
			printf("Fizz\n");
		} elsif($i % 5 == 0) {
			printf("Buzz\n");
		} else {
			printf("$i\n");
		}
	}
}

my ($start, $end) = @ARGV;
main($start, $end);
