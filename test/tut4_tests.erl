-module(tut4_tests).
-include_lib("eunit/include/eunit.hrl").
-export([]).

if_A5_test() ->
	?assertEqual(a_equals_5, tut4:test_if(5,3)).

if_A1B7_test() ->
	?assertEqual(a_equals_1_or_b_equals_7, tut4:test_if(1,7)).

convert_length_centimeter_test() ->
	?assertEqual({inch, 5.0}, tut4:convert_length({centimeter,12.7})).

convert_length_inch_test() ->
	?assertEqual({centimeter,12.7}, tut4:convert_length({inch, 5})).

month_length_test() ->
	?assertEqual(28, tut4:month_length(3000, feb)).
