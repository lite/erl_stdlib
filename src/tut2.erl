-module(tut2).
-export([fac/1, fib/1]).

%% Description: description of test_fac

fac(1) -> 
    1;
fac(N) ->
	N * fac(N-1).

fib(0) -> 
	1;
fib(1) ->
	1;
fib(N) 
	when N > 1 -> 
		fib(N-1) + fib(N-2).