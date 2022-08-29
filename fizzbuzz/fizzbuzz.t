#!/usr/bin/perl
use Test2::V0;
use Test::Script;
 
script_compiles("fizzbuzz.pl");
script_runs(["fizzbuzz.pl", "3", "3"]);

script_stdout_is "Fizz\n", "Output Fizz on moduli of 3";

script_runs(["fizzbuzz.pl", "5", "5"]);

script_stdout_is "Buzz\n", "Output Buzz on moduli of 5";

script_runs(["fizzbuzz.pl", "1", "1"]);

script_stdout_is "1\n", "Output should be 1";

done_testing;
