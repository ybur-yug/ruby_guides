def hello
  puts "hello"
end

def goodbye(name)
  hello
  puts "Goodbye " + name
end

hello
goodbye("Tom")

