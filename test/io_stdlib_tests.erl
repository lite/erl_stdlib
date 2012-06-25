-module(io_stdlib_tests).
-include_lib("eunit/include/eunit.hrl").
-export([]).

-ifndef(FN).
-define(FN, '/tmp/output.txt').
-endif.

io_write_test() ->
	case file:open(?FN, [write]) of
		{ok,S} ->
			io:format(S, "~s~n", ["Hello readers"]),
			file:close(S);
		{error, Reason} ->
            ?debugFmt("open error  reason:~s~n", [Reason]),
            ng
    end,
	?debugMsg("io write done~n").

io_read_test() ->
	case file:open(?FN, [read]) of
        {ok, S} ->
            read_text(S),
            file:close(S);
        {error, Reason} ->
            ?debugFmt("open error  reason:~s~n", [Reason]),
            ng
    end,
	?debugMsg("io read done~n").

read_text(IoDevice) ->
    case file:read_line(IoDevice) of
        {ok, Line} -> 
            ?debugFmt("read: ~s", [Line]),
        	io:format("~s", [Line]), read_text(IoDevice);
        eof -> 
        	ok
    end.