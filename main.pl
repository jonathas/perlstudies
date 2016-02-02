use strict;
use warnings;

use LWP::Simple;

sub main {
	print "Downloading ...\n";
	#print get("http://www.jonathas.com/");
	getstore("http://www.jonathas.com/","home.html");
	print "Finished\n";
}

main();