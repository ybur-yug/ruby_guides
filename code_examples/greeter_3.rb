greet = -> do
  puts "What is your name?"
  name = gets.chomp
  puts "Where are you from?"
  hometown = gets.chomp
  puts "Hello " + name + " from " + hometown
end

greet.call
greet.call
