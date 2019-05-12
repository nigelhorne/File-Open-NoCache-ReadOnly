#!perl -wT

use strict;
use warnings;
use autodie qw(:all);

use Test::Most tests => 6;

BEGIN {
	use_ok('File::Open::NoCache::ReadOnly');
}

OPEN: {
	my $fin = new_ok('File::Open::NoCache::ReadOnly' => [
		filename => 'lib/File/Open/NoCache/ReadOnly.pm'
	]);
	my $fd = $fin->fd();
	ok(<$fd> =~ /^package File::Open::NoCache::ReadOnly;/);

	ok(!($fin = defined(File::Open::NoCache::ReadOnly->new('/asdasd.not.notthere'))));
	ok(defined($fin = new_ok('File::Open::NoCache::ReadOnly' => [
		filename => 'lib/File/Open/NoCache/ReadOnly.pm'
	])));
}
