# Functions & Ruby

In the prior example, we did not define a 'true' function. What we built with `greeter_2.rb` was
what is called a `proc` or `lambda`. We will learn more about how these work later, but for now
just remember they exist. In the simplest form, `functions` allow us to make it so logic is reuseable.
Here are some examples of simply Ruby functions:

`atom basic_functions.rb`

```ruby
def hello
  puts "hello"
end

def goodbye(name)
  puts "Goodbye " + name
end
```
[`basic_functions.rb`](https://github.com/ybur-yug/ruby_guides/blob/master/code_examples/basic_functions.rb)

In these two examples we have functions called `hello` and `goodbye`. Let's add on to the end of the
file and actually call these now.

```ruby
... # these dots represent the code we just wrote, this will go below it
hello
goodbye
```

and now if we run the file:

`$ ruby basic_functions.rb`

```bash
hello
code_examples/basic_functions.rb:5:in `goodbye': wrong number of arguments (0 for 1) (ArgumentError)
  from code_examples/basic_functions.rb:10:in `<main>'

  shell returned 1
```

Oops. Our first error! If we look at this we get a clue as to what we did wrong. We needed to pass
a `name` parameter into our `goodbye` function. Parameters are the input to functions, the data you
wish for them to manipulate. Let's fix this.

`$ atom basic_functions_2.rb`

```ruby
def hello
  puts "hello"
end

def goodbye(name)
  puts "Goodbye " + name
end

hello

goodbye("Tom")
```

[`basic_functions_2.rb`](https://github.com/ybur-yug/ruby_guides/blob/master/code_examples/basic_functions_2.rb)

Parameters are passed in the parentheses after a function name in Ruby. For single arguments, we can
actually omit the parentheses in Ruby and write it

`goodbye "Tom"`

But this is often considered a questionable practice code-style wise. For now we will stick to using
the parentheses to avoid unforeseen and accidental errors.

When we run this new code:

`$ ruby basic_functions_2.rb`

we get:

```bash
$ ruby code_examples/basic_functions_2.rb
hello
Goodbye Tom
```

We can even call functions within another function:

`$ atom basic_functions_3.rb`

```ruby
def hello
  puts "hello"
end

def goodbye(name)
  hello
  puts "Goodbye " + name
end

hello
goodbye("Tom")
```

[`basic_functions_3.rb`](https://github.com/ybur-yug/ruby_guides/blob/master/code_examples/basic_functions_3.rb)

In this case, we are now calling `hello` within `goodbye`. Though this functionally makes sense, it
shows us how we can chain different functions together.

Now that we know about functions, variables, and how to get and print output, let's move onto some
exercises to use what we've learned. We will dive a LOT further into functions later, but for now
we have enough knowledge to make a simple app with these tools.

[Exercise 0](https://github.com/ybur-yug/ruby_guides/blob/master/book/introduction/05_exercise_0.md)
