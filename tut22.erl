-module(tut22).
-export([start/0]).

start() ->
   odbc:start(),
   {ok, Ref} = odbc:connect("DSN = usersqlserver; UID = testuser;PWD = test123, []),
   odbc:sql_query(Ref, "CREATE TABLE EMPLOYEE (FIRSTNAME char varying(20),
   LASTNAME char varying(20), AGE integer, SEX char(1), INCOME integer)")
