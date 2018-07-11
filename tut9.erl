-module(tut9).
-export([start/0]).
-record(person, {name = "", id}).

start() ->
   P = #person{name="John",id=1},
   io:fwrite("~p~n",[P#person.id]),
   io:fwrite("~p~n",[P#person.name]).
