-module(tut24).
-export([start/0]).

start() ->
   odbc:start(),
   {ok, Ref} = odbc:connect("DSN = usersqlserver; UID = sa;PWD = demo123", []),
   io:fwrite("~p",[odbc:select_count(Ref, "SELECT * FROM EMPLOYEE")]).
