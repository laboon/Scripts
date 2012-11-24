# Get yesterday's wind data and display it
package Laboon;

use strict;
use warnings;
use LWP::Simple;

my $windSrc = "http://www.spc.noaa.gov/climo/reports/yesterday_wind.csv";
my $windSrcData = get($windSrc) or die("Could not get data from $windSrc");
my @windRows = split(/\n/, $windSrcData);
my $row;
my @line;
my $entry;
for $row (@windRows) {
    @line = split(/,/, $row);
    for $entry (@line) {
        print $entry . "\t";
    }
    print "\n";
}


