class Game
  attr_reader :player1, :player2, :current_player

  def initialize(player1_name, player2_name)
    @player1 = Player.new(player1_name)
    @player2 = Player.new(player2_name)
    @current_player = @player1
  end

  def switch_turns
    IOHandler.output_message("----- NEW TURN -----")
    @current_player = @current_player == player1 ? @player2 : @player1
  end

  def play_turn
    question = Question.new
    if question.ask_question(current_player)
      IOHandler.output_message("YES! You are correct.")
    else
      IOHandler.output_message("Seriously? No!")
      current_player.lose_life
    end
    display_scores
  end

  def check_winner
    unless @player1.alive?
      IOHandler.output_message("#{@player2.name} wins with #{@player2.lives} live(s) left!")
      IOHandler.output_message("----- Game Over! -----")
      return true
    end

    unless @player2.alive?
      IOHandler.output_message("#{@player1.name} wins with #{@player1.lives} live(s) left!")
      IOHandler.output_message("----- Game Over! -----")
      return true
    end

    false
  end

  def display_scores
    @player1.display_status
    @player2.display_status
  end

  def start
    IOHandler.output_message("Welcome to the Math Game!")
    until check_winner
      play_turn
      switch_turns
    end
    IOHandler.output_message("Good bye!")
  end
end
