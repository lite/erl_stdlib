-module(stdlib_io_tests).
-include_lib("eunit/include/eunit.hrl").
-export([]).

io_format_test() ->
	io:format("hello hello\n").

io_format_p_test() ->
	io:format("~p", [1024]).

io_format_w_test() ->
	io:format("~w", [1024]).

io_format_s_test() ->
	io:format("~s~n",[<<"åäö"/utf8>>]).

io_format_ts_test() ->
	io:format("~ts~n",[<<"åäö"/utf8>>]).
	