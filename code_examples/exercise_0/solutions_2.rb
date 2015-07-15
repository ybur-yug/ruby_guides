def name
  puts "what is your name?"
  gets.chomp
end

def phone
  puts "what is your phone #?"
  gets.chomp
end

def address
  puts "what is your address?"
  gets.chomp
end

def fav_food
  puts "what is your favorite food?"
  gets.chomp
end

def personal_info
  person_name = name
  person_phone = phone
  person_address = address
  person_food = fav_food
  puts "Hi, " + person_name
  puts "Your phone number is: " + person_phone
  puts "Your address is: " + person_address
  puts "Your favorite food is: " + person_food
end

personal_info

