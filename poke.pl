#!/usr/bin/perl
use warnings;
use strict;
use CGI 'param';
use CGI::Carp 'fatalsToBrowser';

my $a = quotemeta param('a');
my $u = quotemeta param('u');
my $p = quotemeta param('p');

$a and $u and $p or die "Invalid Parameters\n";

chdir '/opt/pgoapi';
print "Content-Type: application/json\n\n";
print `env ./pokecli2.py -a $a -u $u -p $p`;
