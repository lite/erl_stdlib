-module(debug_tests).
-include_lib("eunit/include/eunit.hrl").
-export([]).

debugmsg_test() ->
	?debugMsg('hello hello\n').

debugfmt_test() ->
	?debugFmt('~p', [1024]).
	