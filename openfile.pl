use strict;
use warnings;

use File::Find;

$| = 1;

#sub main {
#
#	open(INPUT, $file) or die("Input file $file not found.\n");
#
#	while ( my $line = <INPUT> ) {
#		print $line;
#	}
#
#	close(INPUT);
#}

my @content;
find( \&wanted, '/home/jon/Dropbox/Links (Passar para o Pocket)' );
print @content;

exit;

sub wanted {
	if ( -f $File::Find::name ) {
		push @content, $File::Find::name;
		return;
	}
}

#main();
