-module(tut26).
-export([start/0]).
help_me(Animal) ->
    Talk = if Animal == cat  -> "meow";
              Animal == beef -> "mooo";
              Animal == dog  -> "bark";
              Animal == tree -> "bark";
              true -> "fgdadfgna"
           end,
    io:fwrite( "Animal, says ~p! ~n", [Talk]).

insert(X,[]) ->
    [X];
insert(X,Set) ->
    M = "number " ++ integer_to_list(X) ++ " was not in the list, but was added => ",
    case lists:member(X,Set) of
    true -> io:fwrite("this number is in the list ~p~n", [Set]);
    false -> io:fwrite(M ++ repeat("~p ",8) ++ "~n", [X|Set])
    end.

repeat(X,N) ->
    lists:flatten(lists:duplicate(N,X)).

beach(Temperature) ->
    case Temperature of
        {celsius, N} when N >= 20, N =< 45 ->
            'favorable';
        {kelvin, N} when N >= 293, N =< 318 ->
            'scientifically favorable';
        {fahrenheit, N} when N >= 68, N =< 113 ->
            'favorable in the US';
        _ ->
            'avoid beach'
    end.
start() ->
  beach({}).
