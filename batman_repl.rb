#intro
def show_intro
  puts "After all your hardwork, you've become Batman"
end
def put_a_line
  puts '*' * 50
end

show_intro
put_a_line

def ask_question(question, options)
  say nil, question
  say nil, "Options: #{options}"
  gets.chomp.downcase
end
#choose a sidekick

ally = gets.chomp.downcase ("Who will be your sidekick?", "Batgirl or Robin")

handle_sidekick(ally)

def say (name, statement)
  if name.nil?
    puts statement
  else
    puts "#{name.capitalize}: #{statement}"
  end
end

def handle_sidekick(ally)
  if ally == "batgirl"
    say("Batgirl", "Suit me up!")
  elsif ally == "robin"
    say( "Robin", "Holy rusted metal Batman")
  else
    say (nil, "Fine, I'll pick one for you.")
    ally = "robin"
  end
end


ally = ally.capitalize!

put_a_line
#choose a weapon
puts "Awesome! Let's get your sidekick a weapon"
puts "Options: batarang, fists, flashlight"
weapon = gets.chomp.downcase

case weapon
when "batarang"
  say (ally, " Awesome! A batarang! Thanks Batman!")
when "fists"
  say (ally, " I don't need a weapon, I'll just use my fists")
when "flashlight"
  say (ally, "Uh...bro? I'll make sure to keep a light on you")
else
  puts "Don't be selfish. Share your toys with your sidekick"
  weapon = "batarang"
end

#choose my enemy
puts "Who should we fight first?"
valid_enemies = ["joker", "riddler", "penguin"]

puts "Options: Joker, Riddler, Penguin"
enemy = gets.chomp.downcase

until valid_enemies.include?(enemy)
  puts ["Wha?", "Que?", "Como?", "Huh?"].sample
  puts "Options: Joker, Riddler, Penguin"
  enemy = gets.chomp.downcase
end

case enemy
when "riddler"
  say (enemy "Riddler: Puzzler me this, Batman!")
when "joker"
  say (enemy "Joker: Ha ha ha...ha ha!")
when "penguin"
  say (enemy "Penguin: Rweh rweh rweh.. rweh rweh")
else
  say (nil, "This shouldn't happen")
end
