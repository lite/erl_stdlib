-module(tut1).
-export([double/1, mult/2, convert/2, convert_length/1, list_length/1]).

% Modules and Functions

double(X) ->
    2 * X.

mult(X, Y) ->
    X * Y.

%% Atoms

convert(M, inch) ->
    M / 2.54;
convert(N, centimeter) ->
    N * 2.54.

% Tuples

convert_length({centimeter, X}) ->
    {inch, X / 2.54};
convert_length({inch, Y}) ->
    {centimeter, Y * 2.54}.

% Lists

list_length([]) ->
    0;    
list_length([First | Rest]) ->
    1 + list_length(Rest).