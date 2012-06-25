-module(function_tests).
-include_lib("eunit/include/eunit.hrl").
-export([]).

bif_test() ->
	?debugFmt("rem:~w round:~w trunc:~w float:~w length:~w~n", 
		[2004 rem 4, round(5.6), trunc(5.01), float(5), length([a,b,c,d])]),
	?debugFmt("is_atom:~w ~w is_tuple:~w ~w~n", 
		[is_atom(hello), is_atom("hello"),
		is_tuple({pairs, {c,30}}),
		is_tuple([pairs, {c,30}])]),
	?debugFmt("atom_to_list:~w list_to_atom:~w integer_to_list:~w~n", 
		[atom_to_list(hello),
		list_to_atom("goodbye"),
		integer_to_list(22)]).