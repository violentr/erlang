-module(tut17).
-export([start/0]).

start() ->
   B = <<5,10,20>>,
   io:fwrite("~p~n",[B]),
   io:fwrite("~p~n",[<<"hello">>]),
   io:fwrite("is it binary? ~w~n", [is_binary(B)]).
