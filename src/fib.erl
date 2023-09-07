-module(fib).

-export([fib/1]).

fib(0) ->
    1;
fib(N) when is_integer(N) ->
    fib(0, 1, 1, N);
fib(_) ->
    {error, <<"Input must be integer value"/utf8>>}.

fib(Prev, Cur, N, N) ->
    Prev + Cur;
fib(Prev, Cur, Iterator, N) ->
    fib(Cur, Prev + Cur, Iterator + 1, N).
