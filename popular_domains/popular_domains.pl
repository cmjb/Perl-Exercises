
sub main {

	my %services = {};

	for (@_) {
		my ($user, $service) = split /@/, $_;
		$service =~ s/\n//g;
		if($services{$service}) {
			my $c = $services{$service};
			$c++;
			$services{$service} = $c;
		} else {
			$services{$service} = 1;
		}
	}

	@keys = keys %services;
	@values = values %services;

	foreach my $key (sort {$services{$b} <=> $services{$a}} keys %services) {
		$_ = $key;
		if($key =~ /[a-z]+\.[a-z]+/) {
			printf "%4d %s\n", $services{$key}, $key;
		}
	}

}
main(<STDIN>);
