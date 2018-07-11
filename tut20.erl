-module(tut20).
-export([start/0, call/2]).

call(Arg1, Arg2) ->
   io:format("~p ~p~n", [Arg1, Arg2]).

start() ->
   io:fwrite("Module: ~p ~n", [?MODULE]),

   Pid = spawn(?MODULE, call, ["hello", "process"]),
   io:fwrite("~p",[Pid]).
