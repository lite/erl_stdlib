-module(tut2_tests).
-include_lib("eunit/include/eunit.hrl").
-export([]).

fac_test() ->
	?assertEqual(24, tut2:fac(4)).

fib_test() ->
	?assertEqual(8, tut2:fib(5)).
