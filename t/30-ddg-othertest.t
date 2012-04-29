#!/usr/bin/env perl

use strict;
use warnings;
use Test::More;
use utf8::all;
 
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

is(
	l("Umlaut-Test"),
	'Dies ist ein Ümläut',
	"Umlaut Test"
);

done_testing;
