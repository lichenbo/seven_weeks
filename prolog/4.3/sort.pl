ins(N,[],[N]). 
ins(N,[Head|Tail],[N|[Head|Tail]]) :- N < Head.
ins(N,[Head|Tail],[Head|S1]) :- N >= Head, ins(N,Tail,S1).
srt([],R,R).
srt([Head|Tail],R,S) :- ins(Head,R,R1), srt(Tail,R1,S).
srt(L,S) :- srt(L,[],S).
