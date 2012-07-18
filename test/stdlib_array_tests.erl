-module(stdlib_array_tests).
-include_lib("eunit/include/eunit.hrl").
-export([]).

array_set_test() ->
	A1 = array:set(17, true, array:new()),
 	?assertEqual(18, array:size(A1)),
 	?assertEqual(true, array:get(17, A1)),
 	?assertEqual(undefined, array:get(3, A1)).

array_sparse_test() -> 
	A1 = array:set(17, true, array:new()),
 	A2 = array:set(4, false, A1),
  	?assertEqual([{4, false}, {17, true}], array:sparse_to_orddict(A2)).
 
array_fix_test() ->
	A3 = array:fix(array:new([{size,10},{fixed,false},{default,-1}])),
  	{'EXIT',{badarg,_}} = (catch array:set(18, true, A3)),
	?debugMsg("array_fix_test done.").