-module(string_tests).
-include_lib("eunit/include/eunit.hrl").
-export([]).

scan_string_test() ->
	erl_scan:string("\"X\"."),
	erl_scan:string("\"\x{400}\".").
