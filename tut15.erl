-module(tut15).
-export([start/0]).

start() ->
  A = 9,
  case A of {A} when A>10 ->
  io:fwrite("The value of A is greater than 10"); _ ->
  io:fwrite("The value of A is less than 10")
  end.
