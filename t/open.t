#!perl -wT

use strict;
use warnings;
use autodie qw(:all);

use Test::Most tests => 3;
use Test::NoWarnings;

BEGIN {
	use_ok('File::Open::ReadOnly::NoCache');
}

OPEN: {
	my $fin = new_ok('File::Open::ReadOnly::NoCache' => [
		filename => 'lib/File/Open/ReadOnly/NoCache.pm'
	]);
}
