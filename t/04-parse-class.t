#!perl

use Test::More tests => 15;

use strict;
use warnings;

use Parse::Java;

{
	my $ast = Parse::Java->detokenize(Parse::Java->parse_string(<<'END_OF_CODE'));
class test {
}
END_OF_CODE

	isa_ok(		$ast, 							'Parse::Java::Document');
	is(			@{$ast->types}, 				1);
	isa_ok(		$ast->types->[0], 				'Parse::Java::Class');
	is(			$ast->types->[0]->name, 		'test');
	is_deeply(	$ast->types->[0]->modifiers, 	[]);
}

{
	my $ast = Parse::Java->detokenize(Parse::Java->parse_string(<<'END_OF_CODE'));
public class test {
}
END_OF_CODE

	is(			@{$ast->types}, 				1);
	isa_ok(		$ast->types->[0], 				'Parse::Java::Class');
	is(			$ast->types->[0]->name, 		'test');
	is_deeply(	$ast->types->[0]->modifiers, 	['public']);
}

{
	my $ast = Parse::Java->detokenize(Parse::Java->parse_string(<<'END_OF_CODE'));
class foo extends bar {
}
END_OF_CODE

	is(			@{$ast->types}, 					1);
	isa_ok(		$ast->types->[0], 					'Parse::Java::Class');
	is(			$ast->types->[0]->name, 			'foo');
	isa_ok(		$ast->types->[0]->extends,			'Parse::Java::ReferenceType::ClassType');
	is(			$ast->types->[0]->extends->type,	'bar');
	is_deeply(	$ast->types->[0]->modifiers, 		[]);
}


