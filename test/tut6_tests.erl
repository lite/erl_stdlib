-module(tut6_tests).
-include_lib("eunit/include/eunit.hrl").
-export([]).

start_test() ->
	?debugVal(tut6:start()).
