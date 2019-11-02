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
      return card_total + deal_card
      break
    end
    if input == 's'
      nil
      break
    end
    invalid_command
  end
  card_total
end

def invalid_command
  puts "Please enter a valid command"
end

#####################################################
# get every test to pass before coding runner below #
#####################################################

def runner
  
end
    
