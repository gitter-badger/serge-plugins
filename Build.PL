use 5.010_001;
use strict;
use warnings FATAL => 'all';
use Module::Build;

my $builder = Module::Build->new(
    module_name              => 'SergePlugins',
    license                  => 'perl',
    dist_author              => 'Dragos Varovici <dvarovici.work@gmail.com>',
    dist_version_from        => 'lib/SergePlugins.pm',
    release_status           => 'stable',
    configure_requires       => {
        'Module::Build'      => 0,
    },
    build_requires           => {
        'File::Copy::Recursive' => 0,
        'IO::String'         => 0,
        'Test::More'         => '0.94',
        'Text::CSV_XS'       => 0,
        'Text::Diff'         => 0,
    },
    requires => {
        'Serge'              => 0
    },
    recommends => {
        'IO::String'         => 0,
        'Text::CSV_XS'       => 0,
    },
    add_to_cleanup           => ['Serge-*', 'Makefile.PL', 'MYMETA.*', 'META.*', 'MANIFEST.bak', 'MANIFEST'],
    create_makefile_pl       => 'traditional',
);

$builder->create_build_script();
