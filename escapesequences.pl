use strict;
use warnings;

$|=1;

sub main {
	
	# \d digit
	# \s space
	# \S non-space
	# \w alphanumeric
	
	my $text = 'I am 117 years old tomorrow 12345.';
	
	# Extract the numeric part of the string preceded by the word am
	if($text =~ /(am\s\d+)/) {
		print "Matched: '$1'\n";
	}
	
}

main();