-module(tut3_tests).
-include_lib("eunit/include/eunit.hrl").

sum_test() ->
    ?assertEqual(0, tut3:sum([])),
    ?assertEqual(0, tut3:sum([0])),
    ?assertEqual(6, tut3:sum([1,2,3,4,-4])).

product_test() ->
    ?assertEqual(1, tut3:product([])),
    ?assertEqual(2, tut3:product([2])),
    ?assertEqual(36, tut3:product([2,3,2,3])).

odds_test() ->
    ?assertEqual([], tut3:odds([])),
    ?assertEqual([1], tut3:odds([1])),
    ?assertEqual([1,3,5], tut3:odds([1,2,3,4,5])).