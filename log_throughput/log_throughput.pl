use 5.30.0;
use warnings;

sub main {
	my %times ;
	while(my $in = <STDIN>) {
		if($in eq "exit\n")
		{
			exit 0;
		}
		if($in =~ m/\d{4}(?:\/\d{2}(?:\/\d{2}(?: \d{2}(?::\d{2}(?::\d{2})))))/) {
			my $index = $in =~ s/\n//rg; 
			if(!defined($times{$index})) {
				$times{$index} = 1;
			} else {
				$times{$index} += 1;
			}
			foreach my $key (keys %times) {
				printf("$key - $times{$key}\n");
			}
		}
	}
}

main();
