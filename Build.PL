use strict;
use warnings;
use Module::Build;

my $builder = Module::Build->new(
    module_name         => 'Tie::Cycle::Sinewave',
    license             => 'perl',
    dist_author         => 'David Landgren <david@landgren.net>',
    dist_version_from   => 'lib/Tie/Cycle/Sinewave.pm',
    requires => {
        'Test::More' => 0,
    },
    add_to_cleanup      => [ 'Tie-Cycle-Sinewave-*' ],
);

$builder->create_build_script();
