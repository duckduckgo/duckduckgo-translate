#!/usr/bin/env perl

use strict;
use warnings;
use Test::More;
 
use FindBin qw($Bin);

use DDG::Translate;

l_dir($Bin.'/data/locale');
l_lang('de_DE');

ltd('test');

is(
	l("Hello"),
	"Hallo",
	"simple"
);

ltd('othertest');

is(
	l("Hello"),
	"Anderes Hallo",
	"other simple"
);

my $umlaut_trans = l("Umlaut-Test");

is(
	$umlaut_trans,
	'Dies ist ein Ümläut',
	"Umlaut Test"
);

done_testing;
