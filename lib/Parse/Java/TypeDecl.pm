package Parse::Java::TypeDecl;

use strict;
use warnings;

use Carp qw(croak);

use base qw(Parse::Java::Element);

__PACKAGE__->mk_accessors(qw(name modifiers));

sub new {
	my $pkg = shift;
	my $self = $pkg->SUPER::new(@_);

	# Default values
	$self->modifiers([]) if !$self->modifiers || ref $self->modifiers ne 'ARRAY';

	return $self;
}
1;
__END__

=head1 NAME

Parse::Java::Type - Description

=cut