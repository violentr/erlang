-module(tut6).
-export([start/0]).

start() ->
   {ok, File} = file:open("Newfile.txt",[read]),
   Txt = file:read(File,1024 * 1024),
   io:fwrite("~p~n",[Txt]).
