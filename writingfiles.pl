use strict;
use warnings;

$|=1;

sub main {
	my $input = 'home.html';
	open(INPUT, $input) or die ("Input file $input not found.\n");
	
	my $output = 'output.txt';
	
	open(OUTPUT, '>'.$output) or die "Can't create $output.\n";
	
	while(my $line = <INPUT>) {

		#Lines that have jon		
		if($line =~ /jon/) {
			#Replacing you with YOU
			#i = case insensitive
			#g = global search
			$line =~ s/you/YOU/ig;
			
			#Print the result to the output file
			print OUTPUT $line;
		}
	}
		
	close(INPUT);
	close(OUTPUT);
}

main();