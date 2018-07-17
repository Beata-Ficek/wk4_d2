class Game

  attr_reader :winner, :result, :player1, :player2


  def initialize(player1, player2)
    @player1 = player1
    @player2 = player2
    @result = nil
    @winner = nil
    play()
  end

  def play()
    if @player1 == @player2
      @result = "draw"
      return @result
    elsif (@player1 == "rock" && @player2 == "scissors") || (@player1 == "scissors" && @player2 == "rock")
      @result = "rock"
      @winner = "player 1" if player1 == "rock"
      # return @result
    elsif (@player1 == "paper" && @player2 == "scissors") || (@player1 == "scissors" && @player2 == "paper")
      @result = "scissors"
      return @result
    elsif (@player1 == "rock" && @player2 == "paper") || (@player1 == "paper" && @player2 == "rock")
      @result = "paper"
      return @result
    end

    # if @result == "rock wins!" && @player1 == "rock"
    #   @winner = "player 1"
    #   return @winner
    # end
  end
end
