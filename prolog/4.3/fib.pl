fib(1,1).
fib(2,1).
fib(N,S) :- N > 0, N1 is N-1, N2 is N-2, fib(N1,S1), fib(N2,S2), S is S1+S2.
