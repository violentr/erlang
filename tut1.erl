% create module tut1
-module(tut1).
% export for and start functions to the world
-export([for/2,start/0]).

for(0,_) ->
   [];

   for(N,Term) when N > 0 ->
   io:fwrite("Hello~n"),
   [Term|for(N-1,Term)].

start() ->
   for(5,1).
