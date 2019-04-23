VALID_CHOICES = %w(rock paper scissors spock lizard)

def prompt(message)
  Kernel.puts("=> #{message}")
end

# rubocop:disable all
def win?(first, second)
  (first == 'scissors' && second == 'paper') ||
  (first == 'paper' && second == 'rock') ||
  (first == 'rock' && second == 'lizard') ||
  (first == 'lizard' && second == 'spock') ||
  (first == 'spock' && second == 'scissors') ||
  (first == 'scissors' && second == 'lizard') ||
  (first == 'lizard' && second == 'paper') ||
  (first == 'paper' && second == 'spock') ||
  (first == 'spock' && second == 'rock') ||
  (first == 'rock' && second == 'scissors')
end
# rubocop:enable all

def player_wins?(player, computer)
  win?(player, computer)
end

def computer_wins?(player, computer)
  win?(computer, player)
end

def display_round_results(player, computer)
  if player_wins?(player, computer)
    prompt("You Win!")
  elsif computer_wins?(player, computer)
    prompt("Computer Wins!")
  else
    prompt("It's a tie!")
  end
end

def display_winner(player_score, computer_score)
  if player_score == 5
    prompt("You Win The Game.")
  elsif computer_score == 5
    prompt("Computer Wins the game!")
  end
end

player_score = 0
computer_score = 0

prompt("Welcome to Rock Paper Scissors Spock Lizard!")
prompt("Please Type Your Name Here: ")
name = Kernel.gets.chomp()

loop do
  choice = ''

  prompt("#{name}'s score: #{player_score}")
  prompt("Computer score: #{computer_score}")

  loop do
    prompt("Choose one (r)ock (p)aper (sc)issors (s)pock (l)izard")
    choice = Kernel.gets.chomp

    choice = case choice
             when 'sc'
              then 'scissors'
             when 's'
              then 'spock'
             when 'r'
              then 'rock'
             when 'p'
              then 'paper'
             when 'l'
              then 'lizard'
             end
 
    break if VALID_CHOICES.include?(choice)
    prompt("That's not a valid choice.")
  end

  computer_choice = VALID_CHOICES.sample

  prompt("#{name} Chose: #{choice}; Computer Chose: #{computer_choice}")

  display_round_results(choice, computer_choice)

  if computer_wins?(choice, computer_choice)
    computer_score += 1
  elsif player_wins?(choice, computer_choice)
    player_score += 1
  end

  display_winner(player_score, computer_score)

  if player_score == 5 || computer_score == 5
    player_score = 0
    computer_score = 0
    prompt("Do you want to play again?(y)")
    answer = Kernel.gets.chomp
    break unless answer.downcase.start_with?('y')
  end
end

prompt("Thank you for playing.")