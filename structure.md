# 2-Player Math Game

## 1. Player Class

### State:
- `name`: The name of the player.
- `lives`: The number of lives the player has left.

### Methods:
- `initialize(name)`: Initializes the player with a name and 3 lives.
- `lose_life()`: Reduces the player’s lives by 1.
- `alive?`: Returns `true` if the player still has lives left, `false` otherwise.
- `display_status()`: Outputs the player's current lives.

## 2. Question Class

### State:
- `num1`: The first number in the math problem.
- `num2`: The second number in the math problem.
- `answer`: The correct answer to the math problem.

### Methods:
- `initialize()`: Generates two random numbers between 1 and 20 and calculates the answer.
- `ask_question(player)`: Prompts the player with the question and returns whether their answer is correct.

## 3. Game Class

### State:
- `player1`: An instance of the `Player` class representing Player 1.
- `player2`: An instance of the `Player` class representing Player 2.
- `current_player`: Tracks whose turn it is.

### Methods:
- `initialize(player1_name, player2_name)`: Initializes the game with two players.
- `switch_turns()`: Switches the current player after each turn.
- `play_turn()`: Generates a new question, asks the current player, and checks if they lose a life.
- `check_winner()`: Checks if a player has lost all lives, and if so, ends the game.
- `display_scores()`: Displays the current scores for both players.
- `start()`: The main game loop that continues until one player wins.
