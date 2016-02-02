use strict;
use warnings;

$|=1;

sub main {
	my $file = 'home.html';
	
	open(INPUT, $file) or die ("Input file $file not found.\n");
	
	while (my $line = <INPUT>) {
		#The dot means any character: s.n
		#The + is a quantifier. Matches 1 or more: o+
		#The * tells it to match 0 or more of the preceding character: so*n
		#Starts with s and finishes when it finds an n: s.*n
		#The question mark after the star changes it from beeing greedy to non greedy: s.*?n
		if($line =~ /(so*n)/) {
			print "$1\n";
		}
	}
	
	close(INPUT);
}

main();