old_div := Number getSlot("/")
Number / := method(d, if(d==0, 0, self old_div(d)))

(3/4) println
(3/0) println
(10/5) println
