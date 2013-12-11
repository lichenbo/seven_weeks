release(List,Keyword) = [ Value || {Key,Value}<-List, Key == Keyword]

totalPrice(List) = [ {Item,Quantity*Price} || {Item,Quantity,Price} <- List]
