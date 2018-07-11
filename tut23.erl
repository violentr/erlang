-module(tut23).
-export([start/0]).

start() ->
   odbc:start(),
   {ok, Ref} = odbc:connect("DSN=usersqlserver; UID=testuser;PWD=test123", []),
   io:fwrite("~p",[ odbc:param_query(Ref, "SELECT * FROM EMPLOYEE WHERE SEX=?",
   [{{sql_char, 1}, ["M"]}] )]).
