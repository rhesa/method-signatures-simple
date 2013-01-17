
use strict;
use warnings;
use Test::More tests => 1;

{
    package My::Obj;
    use Method::Signatures::Simple;
    method new () {
        bless {}, $self;
    }
    method foo (
      $x,  # the X
      $y,  # the Y
      ) {
        $x * $y
    }
}

my $o = My::Obj->new;
is $o->foo(4, 5), 20;

__END__
