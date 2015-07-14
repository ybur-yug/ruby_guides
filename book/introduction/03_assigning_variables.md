# Real Programs & Variables
## Getting Started
Now that we successfully have said hello to the world, its time to write a program that actually
does some more stuff. Now, to do this, we will need to use a text editor. There are many, many
text editors you can choose from and there are also religious wars completely centered around them.

For the sake of simplicity, for beginners I recommend downloading [Atom](link) from [Github](link). I see
this as a wonderful solution for a few reasons:

1. It is open source. Ruby is open source. This tutorial is open source. Developers tend to just love open source software and its widely

2. It is easy and has Ruby support out of the box.

3. It runs on just about any operating system you can think of.

### TODO: Atom install guide

#### Sidenote: Other Editors
If you however are feeling VERY adventurous, you can dive into `vi` or `emacs`. I won't cover getting
started with those here myself, but I will say I am a vi user and I cannot imagine my life without it.
That is a talk for another day, though.

### Back to Hackery
Now, once atom is installed we get a cool toy. If we simply type

```bash
atom some_file.rb
```

We will open atom, and also a file called `some_file.rb`. So in this case, for our first saved
program, let's call it `greeter.rb`.

`atom greeter.rb`

And once atom fires up, this is the code we will put in. For this first example, let's just copy/paste
and I will explain what we are doing after.

`atom greeter.rb`

```ruby
puts "What is your name?"
name = gets.chomp
puts "Where are you from?"
hometown = gets.chomp
puts "Hello " + name + " from " + hometown
```

Now, this is quite the simple program, but it exposes us to a few more concepts.

First of all, we are assigning variables. Variables are essentially names given to values that matter
to your code. In Ruby, great naming is something many developers take pride in. Here we assign `name`
and `hometown` variables. These are retrieved using the function `gets.chomp`.

You might wonder why/what this whole `.chomp` thing is. It sounds like were feeding a bear or something,
but it actually is quite simple. Remember in our first code with IRB where we got a new line at the end?

at the end of our `puts` statement? Chomp is a `method` that will 'chomp' off the newline from user
input. `gets` simply gets input from a user.

### TODO Example of above

Methods are all over in ruby, and we will get into them in a bit.

For now, lets run our program. To do this, we simply will type

`ruby greeter.rb`

It should go something like:

```ruby
$ ruby code_examples/greeter.rb
What is your name?
bob
Where are you from?
gibsonburg
Hello bob from gibsonburg
```

Bam. We now have input from a user and can utilize it stored in values. But what if we wanted to reuse
this? To do that, we need to make a `function`. To do this is quite simple modifying our old code:

```ruby
greet = -> do
  puts "What is your name?"
  name = gets.chomp
  puts "Where are you from?"
  hometown = gets.chomp
  puts "Hello " + name + " from " + hometown
end
```

As you can see, there is very little change here. We simply have added 2 lines:

`greet = -> do`

and

`end`

What this does, is `def` or, 'define' a `function` called `greet`. Now, to call this function anywhere
all we have to do is add a couple more lines to call it.

`atom greeter_2.rb`

```ruby
greet = -> do
  puts "What is your name?"
  name = gets.chomp
  puts "Where are you from?"
  hometown = gets.chomp
  puts "Hello " + name + " from " + hometown
end

greet.call
greet.call
```

Now, if we run

`ruby greeter_2.rb`

What we have done here is use a `function` object called a `proc`, and use the `call` method to invoke
it two times.

We will be prompted to give our name then hometown twice, as that is how many times we have called the
function. This is just the beginning. But hopefully you are starting to see the bigger picture of what
the possibilities are with programs as a whole!

[Function Time!](https://github.com/ybur-yug/ruby_guides/blob/master/book/introduction/04_functions.md)
