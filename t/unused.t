#!perl -w

use strict;
use warnings;

use Test::DescribeMe qw(author);
use Test::Most;
use Test::Needs { 'warnings::unused' => '0.04' };

use_ok('File::Open::NoCache::ReadOnly');
new_ok('File::Open::NoCache::ReadOnly');
plan(tests => 2);
