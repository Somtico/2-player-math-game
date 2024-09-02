class Question
  attr_reader :num1, :num2, :answer

  def initialize
    @num1 = rand(1..20)
    @num2 = rand(1..20)
    @answer = num1 + num2
  end

  def ask_question(player)
    player_answer = IOHandler.get_input("#{player.name}, what is #{@num1} + #{@num2}?").to_i
    player_answer == @answer
  end    
end