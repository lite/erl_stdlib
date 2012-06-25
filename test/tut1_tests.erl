-module(tut1_tests).
-include_lib("eunit/include/eunit.hrl").
-export([]).

double_test() ->
	?assertEqual(2, tut1:double(1)).

mult_test() ->
	?assertEqual(15, tut1:mult(3, 5)).

convert_test() ->
	?assertEqual(1.1811023622047243, tut1:convert(3, inch)).
	% ?assertEqual(17.78, tut1:convert(7, centimeter)).

convert_length_test() ->
	?assertEqual({inch, 5.0}, tut1:convert_length({centimeter,12.7})).
	% ?assertEqual({centimeter,12.7}, tut1:convert_length({inch, 5})).
