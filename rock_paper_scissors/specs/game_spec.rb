require 'minitest/autorun'
require_relative '../models/game'

class TestGame < Minitest::Test

  def setup

  end

  def test_play__rock_rock()
    @game = Game.new( "rock", "rock")
    assert_equal("nobody", @game.play)
  end

  def test_play__scissors_scissors()
    @game = Game.new( "scissors", "scissors")
    assert_equal("nobody", @game.play)
  end

  def test_play__paper_paper()
    @game = Game.new( "paper", "paper")
    assert_equal("nobody", @game.play)
  end

  def test_play__rock_scissors()
    @game = Game.new( "rock", "scissors")
    assert_equal("rock", @game.play)
  end

  def test_play__scissors_rock()
    @game = Game.new( "scissors", "rock")
    assert_equal("rock", @game.play)
  end

  def test_play__paper_scissors()
    @game = Game.new( "paper", "scissors")
    assert_equal("scissors", @game.play)
  end

  def test_play__scissors_paper()
    @game = Game.new( "scissors", "paper")
    assert_equal("scissors", @game.play)
  end

  def test_play__rock_paper()
    @game = Game.new( "rock", "paper")
    assert_equal("paper", @game.play)
  end

  def test_play__paper_rock()
    @game = Game.new( "paper", "rock")
    assert_equal("paper", @game.play)
  end

end
