use strict;
use warnings;

$|=1;

sub main {
	my $file = 'home.html';
	
	open(INPUT, $file) or die ("Input file $file not found.\n");
	
	while (my $line = <INPUT>) {
		if($line =~ /a.p.e/) {
			print $line;
		}
	}
	
	close(INPUT);
}

main();