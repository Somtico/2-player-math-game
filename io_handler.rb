class IOHandler
  def self.output_message(message)
    puts message
  end

  def self.get_input(prompt)
    puts prompt
    gets.chomp
  end
end