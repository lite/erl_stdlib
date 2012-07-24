-module(stdlib_base64_tests).
-include_lib("eunit/include/eunit.hrl").
-export([]).

base64_encode_test() ->
	S = "hello base64",
	A1 = base64:encode(S),
	?assertEqual(<<"aGVsbG8gYmFzZTY0">>, A1),
	A2 = base64:encode_to_string(S),
	?assertEqual("aGVsbG8gYmFzZTY0", A2).

base64_decode_test() ->
	S = "aGVsbG8gYmFzZTY0",
	A1 = base64:decode(S),
	?assertEqual(<<"hello base64">>, A1),
	A2 = base64:mime_decode_to_string(S),
	?assertEqual("hello base64", A2).