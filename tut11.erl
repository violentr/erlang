-module(tut11).
-export([start/0]).
-define(macro1(X,Y),{X+Y}).

start() ->
   io:fwrite("~w",[?macro1(1,2)]).
