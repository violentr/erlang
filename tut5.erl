-module(tut5).
-export([tail_len/1,tail_len/2,duplicate/2,start/0]).

tail_len(L) -> tail_len(L,0).
tail_len([], Acc) -> Acc;
tail_len([_|T], Acc) -> tail_len(T,Acc+1).

duplicate(0,_) ->
   [];
duplicate(N,Term) when N > 0 ->
   io:fwrite("~w ~n",[Term]),
   [Term|duplicate(N-1,Term)].

start() ->
   X = [1,2,3,4],
   Y = tail_len(X),
   io:fwrite("Your result is: ~w~n",[Y]),
   duplicate(5, 1).
