-module(tut12).
-export([start/0]).
-include("user.hrl").

start() ->
   P = #person{name = "John",id = 1},
   io:fwrite("~p~n",[P#person.id]),
   io:fwrite("~p~n",[P#person.name]),
   io:fwrite("~p~n",[?macro1(12,3)]).
