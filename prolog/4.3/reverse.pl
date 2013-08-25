rev([Head1|Tail1],Z,S) :- rev(Tail1,Head1|Z,S).
rev([],X,X).
rev(L,S) :- rev(L,[],S).
