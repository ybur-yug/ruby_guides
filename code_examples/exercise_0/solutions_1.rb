def add(a, b)
  a + b
end

def other(a, b)
  add(a, b)
end

puts other("foo", "bar")
