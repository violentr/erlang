-module(tut10).
-export([start/0]).
-record(person, {name = "", address}).
-record(employee, {person, id}).

start() ->
   P =#employee{person=#person{name="John",address="A"},id=1},
   io:fwrite("~p~n",[P#employee.id]),
   {A, B, C} = P#employee.person,
   io:fwrite("Record: ~p~n",[A]),
   io:fwrite("Name: ~p~n",[B]),
   io:fwrite("Address: ~p~n",[C]).
