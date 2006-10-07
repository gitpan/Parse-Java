package Parse::Java::ReferenceType::ClassOrInterfaceType;

use strict;
use warnings;

use Carp qw(croak);

use base qw(Parse::Java::ReferenceType);

__PACKAGE__->mk_accessors(qw(parent_type type));

# body ...

1;
__END__

=head1 NAME

Parse::Java::ReferenceType::ClassOrInterfaceType - Description

=cut