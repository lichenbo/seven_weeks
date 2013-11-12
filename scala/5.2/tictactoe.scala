object TicTacToe {
  def start() {
    if (Board.finished) {

    }

  }

}

object Board {
  val board = List(List("_","_","_"),List("_","_","_"),List("_","_","_"))
  val playerList = Tuple("O","X")
  var player = 0

  def finished:Boolean = checkRows && checkColumns
  def checkFull:Boolean = board.flatten.forall(c => c!="_")
  def checkRows():Boolean = (0 to 2).forall(i => checkRow(i))
  def checkRow(i:Int):Boolean = board(i) == List("O","O","O") || board(i) == List("X","X","X")
  def checkColumns():Boolean = (0 to 2).forall(i => checkCol(i))
  def checkCol(i:Int):Boolean = {
    val tempCol = (0 to 2).map {row => board(row)(i)}
    tempCol == List("O","O","O") || tempCol == List("X","X","X")
  }
  def turn = {
    player = 1 - player
  }
  def put(row:Int, col:Int) = {
    if (board(row)(col) == "-") board(row)(col) = playerList(player)
    else println("You cannot put it here!")
  }
}

TicTacToe.start