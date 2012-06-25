-module(io_stdlib_tests).
-include_lib("eunit/include/eunit.hrl").
-export([]).

io_fmt_test() ->
	io:format("hello world~n", []).

io_fmt_w_test() ->
	io:format("this outputs one Erlang term: ~w~n", [hello]).

io_fmt_ww_test() ->
	io:format("this outputs two Erlang terms: ~w ~w~n", [hello, world]).