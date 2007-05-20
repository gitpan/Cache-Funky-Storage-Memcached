package Cache::Funky::Storage::Memcached;

use warnings;
use strict;
use base qw/Cache::Funky::Storage/;
use Cache::Memcached;

our $VERSION = '0.02';

sub new {
    my $class = shift;
    my $args  = shift;

    my $s = {};
    $s->{memcached} = Cache::Memcached->new( $args ) ;

    return bless $s ,$class;
}

sub set {
    my $s     = shift;
    my $key   = shift;
    my $value = shift;

    $s->{memcached}->set( $key , $value );

    return;
}

sub get {
    my $s     = shift;
    my $key   = shift;

    return $s->{memcached}->get( $key );

}

sub delete {
    my $s     = shift;
    my $key   = shift;

    $s->{memcached}->delete( $key );
}


1;

=head1 NAME

Cache::Funky::Storage::Memcached - Cache::Funky  Memcached Storage.

=head1 DESCRIPTION

Memcached Storage for L<Cache::Funky>

=head1 METHOD

=head2 new

=head2 set

=head2 get

=head2 delete

=head1 SEE ALSO

L<Cache::Funky>

=head1 AUTHOR

Tomohiro Teranishi <tomohiro.teranishi@gmail.com>

=cut
