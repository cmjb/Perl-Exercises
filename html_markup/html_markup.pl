use 5.30.0;
use warnings;

sub main {
	my @open_tags = [];
	while(my $data = <STDIN>) {
		my $tag = $data;

		$data = $data =~ s/\{/</rg;
		$data = $data =~ s/\:/>/rg;
		for my $key ( $tag =~ m/\{(.*?)\:/g) {		
			push @open_tags, $key;
		}
		@open_tags = reverse(@open_tags);
		for (@open_tags) {
			my $number = () = $data =~ m/\}/;
			for ( my $i = 1; $i <= $number; $i++) {
				my $var1 = shift(@open_tags);
				$data = $data =~ s/\}/<\/$var1>/r;
			}
		}
		printf($data);
	}
}
main();
