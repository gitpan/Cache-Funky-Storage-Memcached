use strict;
use warnings;
use ExtUtils::MakeMaker;

WriteMakefile(
    NAME                => 'Cache::Funky::Storage::Memcached',
    AUTHOR              => 'Tomohiro Teranishi <tomohiro.teranishi@gmail.com>',
    VERSION_FROM        => 'lib/Cache/Funky/Storage/Memcached.pm',
    ABSTRACT_FROM       => 'lib/Cache/Funky/Storage/Memcached.pm',
    PL_FILES            => {},
    PREREQ_PM => {
        'Test::More'             => 0,
        'Cache::Memcached'       => 0,
        'Cache::Funky'          => 0.06,
        'Cache::Funky::Storage' => 0,
    },
    dist                => { COMPRESS => 'gzip -9f', SUFFIX => 'gz', },
    clean               => { FILES => 'Cache-Funky-Storage-Memcached-*' },
);
