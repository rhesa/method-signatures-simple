use strict;
use warnings;
use Module::Build;

my $builder = Module::Build->new(
    module_name         => 'Method::Signatures::Simple',
    license             => 'perl',
    dist_author         => 'Rhesa Rozendaal <rhesa@cpan.org>',
    dist_version_from   => 'lib/Method/Signatures/Simple.pm',
    build_requires => {
        'Test::More' => 0,
    },
    requires => {
        'Devel::Declare' => '0.003001',
    },
    add_to_cleanup      => [ 'Method-Signatures-Simple-*' ],
    create_makefile_pl => 'traditional',
);

$builder->create_build_script();
