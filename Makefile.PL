# generate Makefile for building Tie::Cycle::Sinewave
#
# Copyright (C) 2005 David Landgren

use strict;
use ExtUtils::MakeMaker;

eval "use ExtUtils::MakeMaker::Coverage";
if( $@ ) {
    print "Can't load ExtUtils::MakeMaker::Coverage, not adding testcover target\n";
}
else {
    print "Adding testcover target\n";
}

WriteMakefile(
    NAME         => 'Tie::Cycle::Sinewave',
    VERSION_FROM => 'Sinewave.pm',
    PREREQ_PM    => {
        'Test::More' => 0,
	},
);
