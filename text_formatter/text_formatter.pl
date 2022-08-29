
sub main {
	my $w = shift;
	my @words = split ' ', <STDIN>;
	my $line_length = 0;
	for(my $i=0; $i<=scalar(@words); $i++)
	{
		if(length($words[$i]) > $w && $i == 0) {
			printf("Sorry, but the first value you gave was greater than the line limit. ");
			exit();
		}
		my $word_length = length($words[$i]);
		if(($word_length + $line_length) >= $w)
		{
			printf("\n");	
		}
		printf("$words[$i] ");
		$line_length .= length($words[$i]);
	}

}
main(15);
