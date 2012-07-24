-module(stdlib_math_tests).
-include_lib("eunit/include/eunit.hrl").
-export([]).

math_pi_test() ->
	?debugFmt("pi(): ~p", [math:pi()]).

math_sincos_test() ->
	?debugFmt("sin(60): ~w", [math:sin(60)]),
	?debugFmt("cos(90): ~w", [math:cos(90)]),
	?debugFmt("tan(90): ~w", [math:tan(90)]),
	?debugFmt("asin(1): ~w", [math:asin(1)]),
	?debugFmt("acos(1): ~w", [math:acos(1)]),
	?debugFmt("atan(1): ~w", [math:atan(1)]),
	?debugFmt("atan2(0, 1): ~w", [math:atan2(0, 1)]),
	?debugFmt("sinh(90): ~w", [math:sinh(90)]),
	?debugFmt("cosh(90): ~w", [math:cosh(90)]),
	?debugFmt("tanh(90): ~w", [math:tanh(90)]),
	?debugFmt("asinh(90): ~w", [math:asinh(90)]),
	?debugFmt("acosh(90): ~w", [math:acosh(90)]),
	?debugFmt("atanh(0): ~w", [math:atanh(0)]).

math_exp_test() ->
	?debugFmt("exp(4): ~w", [math:exp(4)]),
	?debugFmt("log(100): ~w", [math:log(100)]),
	?debugFmt("log10(100): ~w", [math:log10(100)]),
	?debugFmt("pow(4,3): ~w", [math:pow(4,3)]),
	?debugFmt("sqrt(81): ~w", [math:sqrt(81)]).
	
math_erf_test() ->
	% erf(X) = 2/sqrt(pi)*integral from 0 to X of exp(-t*t) dt.        
	?debugFmt("erf(4): ~w", [math:erf(4)]),
	?debugFmt("erfc(4): ~w", [math:erfc(4)]).