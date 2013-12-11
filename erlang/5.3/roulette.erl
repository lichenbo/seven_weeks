-module(roulette).
-export([loop/0]).

loop() ->
		process_flag(trap_exit, true),
		receive
				3 -> io:format("bang.~n"),exit({roulette,die,at,erlang:time()});
				_ -> io:format("click~n"), loop()
		end.
