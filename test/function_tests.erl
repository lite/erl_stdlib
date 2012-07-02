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

hof_test()->
	Double = fun(X)->X*2 end,
	?debugFmt("Double func: ~w", [Double(5)] ),
	?debugFmt("lists map: ~w", [lists:map(Double, [1,2,3])]),
	Print_City = fun({City, {X, Temp}}) -> ?debugFmt("~-15w ~w ~w~n", [City, X, Temp]) end,
	Cities = [{moscow, {c, 10}}, {paris, {f, -28}}],
	lists:foreach(Print_City, Cities),
	Compare = fun({_, {_, Temp1}}, {_, {_, Temp2}}) -> Temp1 < Temp2 end,
	lists:foreach(Print_City, lists:sort(Compare, Cities)).
	