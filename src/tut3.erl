-module(tut3).
-export([sum/1,product/1,odds/1]).

sum([X|R]) -> X + sum(R);
sum([]) -> 0.

product([X|R]) -> X * product(R);
product([]) -> 1.

odds(List) -> odds(List,1).
odds([X|R],N) when N rem 2 == 1 -> [X | odds(R,N+1)];
odds([_|R],N) -> odds(R,N+1);
odds([],_) -> [].