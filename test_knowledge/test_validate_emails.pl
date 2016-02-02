use strict;
use warnings;
$| = 1;

sub main {
	my @emails = (
		'john@skgmw.com', 'hello',
		'@awajw.com',     'jask343d@somewhere77.com',
		'laskf@7565.',
	);

	for my $email (@emails) {
		if ( $email =~ /\w+\@\w+\.\w+/ ) {
			print "Valid: $email\n";
		} else {
			print "Invalid: $email\n";
		}
	}
}

main();
