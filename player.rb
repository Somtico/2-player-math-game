class Player
  attr_reader :name, :lives

  def initialize(name)
    self.name = name
    self.lives = 3
  end

  def lose_life
    self.lives -= 1
  end

  def alive?
    self.lives > 0
  end

  def display_status
    puts "#{name}: #{lives}/3"
  end
end

player1 = Player.new("Player 1")

puts player1.name
puts player1.lives
player1.lose_life
puts player1.lives
puts player1.alive?
player1.lose_life
player1.lose_life
player1.display_status
puts player1.alive?
