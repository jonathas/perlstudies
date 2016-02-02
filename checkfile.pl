use strict;
use warnings;

# turn off output buffering
$| = 1;

sub main {

	my @files = ( 'home.html', 'main.pl', 'heyholetsgo.txt');

	foreach my $file (@files) {
		if ( -f $file ) {
			print "The file $file was found\n";
		}
		else {
			print "File not found: $file\n";
		}
	}

}

main();
