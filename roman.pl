package Laboon;

use strict;
use Carp;

our %RomanNumerals = (
    "I" => 1,
    "V" => 5,
    "X" => 10,
    "L" => 50,
    "C" => 100,
    "D" => 500,
    "M" => 1000
);

# Subroutines
sub convertToArabic {
    my $roman = shift;
}

sub convertToRoman {
    my $arabic = shift;
    
}


# Start execution
print "Enter Roman Numeral (I, V, X, L, C, D, M) > ";
my $romanNum = <STDIN>;
chomp($romanNum);
if ($romanNum =~ m/[IVXLCDMivxlcdm]+/) {
    # Is Good!
    print "Is good...";
} else {
    die ("Invalid character.  Please use only I, V, X, L, C, D, and M.\n");
}