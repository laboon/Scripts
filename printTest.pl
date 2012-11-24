#!/usr/bin/perl
package Laboon;

use strict;
use warnings;

sub isPalindrome {
    my $word = shift;
    my $isPalindrome = 1;
    my $len = length($word);
    # if the length is 0 or 1, then it's a palindrome by definition
    
    if ($len <= 1) {
        #print "$len <= 1 returning true";
        return "true";
    }
    my $cont = "true";
    my $frontCount = 0;
    my $endCount = $len - 1;
    while ($cont) {
        #print "F[ $frontCount ] = " . substr($word, $frontCount, 1);
        #print " - E[ $endCount ] = " . substr($word, $endCount, 1) . "\n";
        # This was an odd-numbered length string
        if ($frontCount == $endCount) {
            $cont = 0;
        } else {
            if (substr($word, $frontCount, 1) eq substr($word, $endCount, 1)) {
                $frontCount++;
                $endCount--;
            } else {
                $isPalindrome = 0;
                $cont = 0;        
            }
        }
        if ($frontCount >= $endCount) {
            $cont = 0;
        }
    }
    if ($isPalindrome) { return "true";}
    else { return "false";}
}

sub readFromFile {
    my $fileToRead = shift;
    print "Reading from " . $fileToRead . "\n";
    open(INPUTFILE, $fileToRead) or die "Could not open $fileToRead\n";
    my $line;
    my @nums;
    my $num;
    while (<INPUTFILE>) {
        $line = $_;
        chomp($line);
        @nums = split(/,/, $line);
        foreach $num (@nums) {
            print "- $num - ";
        }
        print "\n";
    }
    close(INPUTFILE);
    
}

sub writeToFile {
    my $fileToWrite = shift;
    print "Writing to $fileToWrite\n";
    open(OUTPUTFILE, ">$fileToWrite") or die "Could not open $fileToWrite\n";
    for (my $j = 0; $j < 10; $j++) {
        print OUTPUTFILE $j . "\n";
    }
    close OUTPUTFILE;
}

# Execution starts here
print "String tests...\n";
readFromFile("/Users/wlaboon/git/Scripts/test.txt");
writeToFile("/Users/wlaboon/git/Scripts/test2.txt");
my @testWords = ("bill", "bird", "otto", "chirpaprihc", "madamimadam", "a", "", "b", "lalala", "bbbbbbbbbbbbbb");
my $oneWord;
for $oneWord (@testWords) {
    print "$oneWord - palindrome? " . isPalindrome($oneWord) . "\n";
}