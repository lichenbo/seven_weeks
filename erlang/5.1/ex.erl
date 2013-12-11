-module(ex)

wordCount([]) -> 0;
wordCount([head|tail]) -> wordCount(tail) + 1.

count(0) -> 0;
count(N) -> count(N-1) + 1.

printMsg(success) -> "success";
printMsg({error,Message}) -> "error:"+Message.
