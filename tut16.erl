-module(tut16).
-export([display/1,start/0]).

display(N) when N > 10 , is_integer(N) ->
   io:fwrite("greater then 10");
display(N) when N > 10 , is_float(N) ->
   io:fwrite("greater then 10.00");
display(N) when N < 10 ->
   io:fwrite("Less than 10").

start() ->
   display(10.09),
   display(11.23).
