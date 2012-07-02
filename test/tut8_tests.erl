-module(tut8_tests).
-include_lib("eunit/include/eunit.hrl").
-export([]).

start_test() ->
	?debugVal(tut8:start(node())).
