-module(tut9).
-export([start/0, update/0]).
-record(person, {name = "", id}).

start() ->
   P = #person{name="John",id=1},
   io:fwrite("~p~n",[P#person.id]),
   io:fwrite("~p~n",[P#person.name]).

update() ->
   P = #person{name = "John",id = 1},
   P1 = P#person{name = "Dan"},
   io:fwrite("~p~n",[P1#person.id]),
   io:fwrite("~p~n",[P1#person.name]).
