-module(tut8).
-export([start/0]).

start() ->
   P = {john,24,{june,25}} ,
   io:fwrite("~w",[tuple_size(P)]).
