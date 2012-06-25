-module(tut1_tests).
-include_lib("eunit/include/eunit.hrl").
-export([]).

double_test() ->
	?assertEqual(2, tut1:double(1)).

mult_test() ->
	?assertEqual(15, tut1:mult(3, 5)).

convert_inch_test() ->
	?assertEqual(1.1811023622047243, tut1:convert(3, inch)).

convert_centimeter_test() ->
	?assertEqual(17.78, tut1:convert(7, centimeter)).

convert_length_centimeter_test() ->
	?assertEqual({inch, 5.0}, tut1:convert_length({centimeter,12.7})).

convert_length_inch_test() ->
	?assertEqual({centimeter,12.7}, tut1:convert_length({inch, 5})).

list_length_test() ->
    ?assertEqual(7, tut1:list_length([1,2,3,4,5,6,7])).

list_test() ->
    ?assertEqual("abc", [97,98,99]).
