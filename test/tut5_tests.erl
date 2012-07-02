-module(tut5_tests).
-include_lib("eunit/include/eunit.hrl").
-export([]).

say_something_test() ->
	?debugTime("say_something", tut5:say_something(hello, 3)).

start_test() ->
	?debugVal(tut5:start()).
