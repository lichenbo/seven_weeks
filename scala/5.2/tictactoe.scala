object TicTacToe {
  def start() {
    if (Board.finished) {

    }

  }



}

object Board {
  val board = List(List("_","_","_"),List("_","_","_"),List("_","_","_"))

  def finished:Boolean = checkRows && checkColumns
  def checkFull:Boolean = {
    board.foreach {
      row => row.foreach {
        col => if (board(row)(col)=="_") false
      }
    }
    true}
  def checkRows():Boolean = for (i <- 0 to 2) {
    checkRow(i)
  }
  def checkRow(i:Int):Boolean = board(i) == List("O","O","O") || board(i) == List("X","X","X")
  def checkColumns():Boolean = for (i <- 0 to 2) {
    checkCol(i)
  }
  def checkCol(i:Int):Boolean = {
    val tempCol = (0 to 2).map {row => board(row)(i)}
    tempCol == List("O","O","O") || tempCol == List("X","X","X")
  }
}

TicTacToe.start