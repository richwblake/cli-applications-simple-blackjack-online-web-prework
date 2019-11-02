def welcome
  puts "Welcome to the Blackjack Table"
end

def deal_card
  rand(11) + 1
end

def display_card_total( card_total )
  puts "Your cards add up to #{card_total}"
end

def prompt_user
  puts "Type 'h' to hit or 's' to stay"
end

def get_user_input
  gets.chomp
end

def end_game( card_total )
  puts "Sorry, you hit #{card_total}. Thanks for playing!"
end

def initial_round
  hand = deal_card + deal_card
  display_card_total( hand )
  hand
end

def hit?( card_total )
  loop do
    prompt_user
    input = get_user_input
    if input == 'h'
      return deal_card
      break
    end
    if input == 's'
      return 0
      break
    end
    invalid_command
  end
  card_total
end

def invalid_command
  puts "Please enter a valid command"
end

# runner method runs methods present
def run_blackjack
  welcome
  hand = initial_round

  loop do
    hand = hit?( hand )
    display_card_total( hand )
    break if hand > 21
  end
  end_game( hand )
end
    
