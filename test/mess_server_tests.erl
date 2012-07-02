-module(mess_server_tests).
-include_lib("eunit/include/eunit.hrl").
-export([]).

start_server_test() ->
	mess_server:start_server().
