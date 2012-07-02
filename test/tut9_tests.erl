-module(tut9_tests).
-include_lib("eunit/include/eunit.hrl").
-export([]).

start_test() ->
	?debugVal(tut9:start(node())).
