-module(tut18).
-export([start/0]).

start() ->
   B = 6,
   A = fun(X) ->
      io:fwrite("~p~n",[X]),
      io:fwrite("~p~n",[B])
      end,
   A(5).
