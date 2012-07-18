-module(stdlib_binary_tests).
-include_lib("eunit/include/eunit.hrl").
-export([]).

binary_to_list_test() ->
 	A = binary:bin_to_list(<<"erlang">>,{1,3}),
	?debugFmt("~p", [A]).

binary_list_to_test() ->
 	A = binary:list_to_bin("hello"),
	?debugFmt("~p", [A]).

binary_decode_test() ->
	A = binary:decode_unsigned(<<169,138,199>>,big),
	?debugFmt("~p", [A]).

binary_encode_test() ->
	A = binary:encode_unsigned(11111111,big),
	?debugFmt("~p", [A]).

binary_prefix_test() ->
	A = binary:longest_common_prefix([<<"erlang">>,<<"ergonomy">>]),
	B = binary:longest_common_prefix([<<"erlang">>,<<"perl">>]),
	?debugFmt("~p ~p", [A, B]).

binary_suffix_test() ->
	A = binary:longest_common_suffix([<<"erlang">>,<<"fang">>]),
	B = binary:longest_common_suffix([<<"erlang">>,<<"perl">>]),
	?debugFmt("~p ~p", [A, B]).

binary_match_test() ->
	A = binary:match(<<"abcde">>, [<<"bcde">>,<<"cd">>],[]),
	B = binary:matches(<<"abcde">>,[<<"bcde">>,<<"bc">>,<<"de">>],[]),
	?debugFmt("~p ~p", [A, B]).

binary_part_test() ->
	Bin = <<1,2,3,4,5,6,7,8,9,10>>,
	A = binary:part(Bin,{byte_size(Bin), -5}),
	?debugFmt("~p", [A]).

binary_byte_size_test() ->
	A = binary:copy(<<1>>,100),
	S1 = byte_size(A),
	S2 = binary:referenced_byte_size(A),
	<<_:10/binary,B:10/binary,_/binary>> = A,
	S3 = byte_size(B),
	S4 = binary:referenced_byte_size(B),
	?debugFmt("~p ~p ~p ~p", [S1, S2, S3, S4]).

binary_replace_test() ->
 	A = binary:replace(<<"abcde">>,<<"b">>,<<"[]">>,[{insert_replaced,1}]),
	B = binary:replace(<<"abcde">>,[<<"b">>,<<"d">>],<<"[]">>,[global,{insert_replaced,1}]),
	C = binary:replace(<<"abcde">>,[<<"b">>,<<"d">>],<<"[]">>,[global,{insert_replaced,[1,1]}]),
	D = binary:replace(<<"abcde">>,[<<"b">>,<<"d">>],<<"[-]">>,[global,{insert_replaced,[1,2]}]),
	?debugFmt("~p ~p ~p ~p", [A, B, C, D]).

binary_split_test() ->
	A = binary:split(<<"banana">>,[<<"a">>],[{scope,{2,3}}]),
	B = binary:split(binary:part(<<"banana">>,{2,3}),[<<"a">>],[]),
	?debugFmt("~p ~p", [A, B]),
	C = binary:split(<<0,1,0,0,4,255,255,9>>, [<<0,0>>, <<255,255>>],[global]),
	D = binary:split(<<1,255,4,0,0,0,2,3>>, [<<0,0,0>>,<<2>>],[]),
	?debugFmt("~p ~p", [C, D]).

