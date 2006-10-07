package Parse::Java::Class;

use strict;
use warnings;

use Carp qw(croak);

use base qw(Parse::Java::TypeDecl);

__PACKAGE__->mk_accessors(qw(extends implements));

1;
__END__

=head1 NAME

Parse::Java::Class - Description

=cut