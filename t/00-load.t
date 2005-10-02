use Test::More tests => 3;

BEGIN {
use_ok( 'Tie::Cycle::Sinewave' );
}

diag( "testing Tie::Cycle::Sinewave $Tie::Cycle::Sinewave::VERSION" );

SKIP: {
    skip( 'Test::Pod not installed on this system', 1 )
        unless do {
            eval "use Test::Pod";
            $@ ? 0 : 1;
        };

    pod_file_ok( 'Sinewave.pm' );
}

SKIP: {
    skip( 'Test::Pod::Coverage not installed on this system', 1 )
        unless do {
            eval "use Test::Pod::Coverage";
            $@ ? 0 : 1;
        };
    pod_coverage_ok( 'Tie::Cycle::Sinewave', 'POD coverage is go!' );
}
