-module(unicode_tests).
-include_lib("eunit/include/eunit.hrl").
-export([]).

encoding_to_bom_test() ->
	% latin1, unicode, utf8, utf16, utf32, {utf16, big | little}, {utf32, big | little}
	% io:format("~w", [unicode:encoding_to_bom(utf8)]). 
	io:format("~w", [unicode:encoding_to_bom( {utf16, big} )]).
	
bom_to_encoding_test() ->
	io:format("~p", [unicode:bom_to_encoding(<<239,187,191>>)]).
	