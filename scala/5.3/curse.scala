class Person
trait ReplaceCurse {
  val replaceWords = Map("Shoot"->"Pucky","Darn"->"Beans")

  def replaceCurse(str:String) = str.split(" ").toList.map(word =>
    if (replaceWords.keys.toList.contains(word))
      replaceWords(word)
    else word)
}

object Curse extends Person with ReplaceCurse {
  val str = "Hello World Shoot"

  def print = println(replaceCurse(str))
}

Curse.print