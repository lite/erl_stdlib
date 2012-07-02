-module(tut8).

-export([start/1,  ping/2, pong/0]).

ping(0, Pong_Node) ->
    {pong, Pong_Node} ! finished,
    io:format("ping finished~n", []);

ping(N, Pong_Node) ->
    {pong, Pong_Node} ! {ping, self()},
    receive
        pong ->
            io:format("Ping received pong~n", [])
    end,
    ping(N - 1, Pong_Node).

pong() ->
    receive
        {ping, Ping_PID} ->
            io:format("Pong received ping~n", []),
            Ping_PID ! pong,
            pong()
        after 5000 ->
            io:format("Pong timed out~n", [])
    end.

start(Ping_Node) ->
    register(pong, spawn(tut8, pong, [])),
    spawn(Ping_Node, tut8, ping, [3, node()]).