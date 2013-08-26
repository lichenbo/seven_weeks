min([],R,R).
min([Head|Tail],R,S) :- Head < R,  min(Tail,Head,S).
min([Head|Tail],R,S) :- Head >=R,  min(Tail,R,S).
min([Head|Tail],S) :- min([Head|Tail],Head,S).
