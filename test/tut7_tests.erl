-module(tut7_tests).
-include_lib("eunit/include/eunit.hrl").
-export([]).

start_test() ->
	?debugVal(tut7:start()).
