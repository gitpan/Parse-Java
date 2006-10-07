package Parse::Java::ReferenceType::ArrayType;

use strict;
use warnings;

use Carp qw(croak);

use base qw(Parse::Java::ReferenceType);

__PACKAGE__->mk_accessors(qw(parent_type));

1;
__END__

=head1 NAME

Parse::Java::ReferenceType::ArrayType - Description

=cut