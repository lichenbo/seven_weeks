def len(strList: List[String]) = strList.foldLeft(0)((sum,value) => sum+value.length)
println(len(List("abc","12","d")))