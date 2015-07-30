p1 = <<-P1
# Linux & OSX Installation

## About
While many distros of Linux and OSX contain Ruby by default, we are going to ensure we have the
latest and greateset version, as well as set ourselves up with the tools needed to handle multiple
versions, because this will be important to us later and has almost 0 cognitive cost to start.

On both Linux and OSX a great tool called `RVM`, or 'Ruby Version Manager' can easily get us set up
and ready to write some Ruby.

## Install
First, for security purposes we have to add in the `gpg` keys that rvm uses. This allows us to have a
very secure check on exactly what we are getting with the version of Ruby we download.

Don't worry about understanding the security keys or such gobbleteegook yet. We're beginners! It is
simply a good security measure. To do this, we have to open the terminal. For now, don't worry about
how strange and foreign it may be. On a Mac, open up spotlight and type `terminal`, or find it in
`Applications` in Finder. On Ubuntu we can find it by hitting `super` (the 'windows key' on many
keyboards) and typine `terminal`. Once we click it and open it we want to copy/paste the relevent
lines from below that DO NOT start with `#`. We will explore more into the terminal in the next
section.

```bash

# This will get and verify the security keys for RVM
gpg --keyserver hkp://keys.gnupg.net --recv-keys 409B6B1796C275462A1703113804BB82D39DC0E3

# This will get us the `curl` function for bash to utilize in the next step
# But it only needs to be run on linux machines
apt-get install libcurl4-gnutls-dev

# This gets us RVM
curl -sSL https://get.rvm.io | bash -s stable

```

This installs the full suite of Rubies that we could possibly need to use. If you would like a more
in-depth look, you can check out this [RVM Screencast](http://screencasts.org/episodes/how-to-use-rvm).

Note to ignore the second command if you are on OSX, as you will already have curl.

### [Firing Up Ruby](https://github.com/ybur-yug/ruby_guides/blob/master/book/introduction/02_firing_up_ruby.md)
P1

p2 = <<-P2
# Firing Up Ruby

## First Steps
To get an interactive shell to play with in Ruby, we have to touch something that most Mac users
that have no background in programming have at least casually noticed and been curious about:

#### The Terminal!

This scary (for now) command prompt (or, `terminal`) will be our most utilized tool from here on out. We had to open
it last time, but we will actually be using some of its many features here.

We want to open it in the same technique detailed in the last chapter. For now, we wont even have
to worry about text editors, version control, or any of that crazy stuff we will get into later.
We just need a shell and a REPL for Ruby (Read, Evaluate Print Loop). To fire this up, in the
terminal we just type `irb`.

Once we are in here, we can write our first valid Ruby program. It was shown in the prior chapter,
but let's type it by hand in here now. The following is exactly what you should see after typing
`irb` and entering the Ruby prompt:

```ruby

2.2.1 :001 > puts "Hello, World."
Hello, World.
 => nil

```

Now, this is a byte (pun, get it?) sized chunk. From here we will explore the finer points of the
dead basics of Ruby, and actually make some simple programs.

### This Book's Notation
In case there has been any confusion, there are some simple notations we will use for code blocks
and the input/output/editing ruby files pieces of all of this.

Any line starting with `$` is a terminal command. Such as:

`$ atom some_file.rb`
This opens atom with a file named `some_file.rb` from the terminal

`$ irb`
This opens up IRB in the terminal for an interactive session.

Anytime you see a larger block such as this:

```ruby

def foo(bar)
  print bar + " pants"
end

```

The `some_file.rb` is the name of the file you will find corresponding in the `code_examples` section,
and also is a link to that specific code if clicked.

### [Variables!](https://github.com/ybur-yug/ruby_guides/blob/master/book/introduction/03_assigning_variables.md)
P2

p3 = <<-P3
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

$ atom some_file.rb

```

We will open atom, and also a file called `some_file.rb`. So in this case, for our first saved
program, let's call it `greeter.rb`.

`$ atom greeter.rb`

And once atom fires up, this is the code we will put in. For this first example, let's just copy/paste
and I will explain what we are doing after.

```ruby

puts "What is your name?"
name = gets.chomp
puts "Where are you from?"
hometown = gets.chomp
puts "Hello " + name + " from " + hometown

```

[`greeter.rb`](https://github.com/ybur-yug/ruby_guides/blob/master/code_examples/greeter.rb)

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

`$ ruby greeter.rb`

It should go something like:

```ruby

$ ruby greeter.rb
What is your name?
bob
Where are you from?
gibsonburg
Hello bob from gibsonburg

```

Bam. We now have input from a user and can utilize it stored in values. But what if we wanted to reuse
this? To do that, we need to make a `function`. To do this is quite simple modifying our old code:

`$ atom greeter_2.rb`

```ruby

greet = -> do
  puts "What is your name?"
  name = gets.chomp
  puts "Where are you from?"
  hometown = gets.chomp
  puts "Hello " + name + " from " + hometown
end

```

[`greeter_2.rb`](https://github.com/ybur-yug/ruby_guides/blob/master/code_examples/greeter_2.rb)

As you can see, there is very little change here. We simply have added 2 lines:

`greet = -> do`

and

`end`

What this does, is `def` or, 'define' a `function` called `greet`. Now, to call this function anywhere
all we have to do is add a couple more lines to call it.

`atom greeter_3.rb`

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


[`greeter_3.rb`](https://github.com/ybur-yug/ruby_guides/blob/master/code_examples/greeter_3.rb)

Now, if we run

`$ ruby greeter_3.rb`

What we have done here is use a `function` object called a `proc`, and use the `call` method to invoke
it two times.

We will be prompted to give our name then hometown twice, as that is how many times we have called the
function. This is just the beginning. But hopefully you are starting to see the bigger picture of what
the possibilities are with programs as a whole!

### [Function Time!](https://github.com/ybur-yug/ruby_guides/blob/master/book/introduction/04_functions.md)
P3

p4 = <<-P4
# Exercise 0

## First Problem
1. Write a function that takes in two numbers, and adds them together

2. Take this function, and call it inside another, but pass text instead

3. Observe what happens and try to ponder on why.

## Second Problem

1. Write a function that gets someone's name

2. Write a function that gets someone's phone number

3. Write a function that gets someone's address

4. Write a function that gets someone's favorite food.

5. Write a function that calls all of these, and prints the result
P4

p5 = <<-P5
# Math Operators

## Getting Started
We all do math. Even when we are actively not trying to do math, we end up donig a lot of math.
Be it buying some groceries, calculating a tip, or filling your gas tank, it is just a part of our
days. And it is just a part of every programming language you can think of as well. Let's fire up
IRB.

`$ irb`

```ruby

> 1 + 1
=> 2
> 1 - 1
=> 0
> 1 * 2
=> 2
> 3 / 2
=> 1

```
Whoa, wait a second. Everything was pretty predictable up until that last one. Why? It's a simple
answer: Integers.

Programming languages *almost* (*cough*, *cough*, JavaScript) all have two numeric types: `integers`,
and `floats`. Floats have decimal precision. Integers, as the name implies, are exclusively the
integer set of numbers used in mathematics. How do we use floats? In Ruby, we have a few ways:

```ruby

> 3.0 / 2
=> 1.5
> 3 / 2.0
=> 1.5
> 3.to_f / 2
=> 1.5
> 3 / 2.to_f
=> 1.5
> 3.0.to_i / 2.0.to_i
=> 1

```

So let's break this down:

### To be continued
P5

a = Chapter.new(title: "Setup & Basics")
a.save!

Section.create(title: "Installing Ruby",
               chapter_id: a.id,
               number: 0.1,
               body: p1)

Section.create(title: "Getting Started",
               chapter_id: a.id,
               number: 0.2,
               body: p2)

Section.create(title: "Functions & Variables",
               chapter_id: a.id,
               number: 0.3,
               body: p3)

Section.create(title: "Exercise 1",
               chapter_id: a.id,
               number: 0.4,
               body: p4)

Section.create(title: "Exercise 1",
               chapter_id: a.id,
               number: 0.5,
               body: p5)
require 'pry'; binding.pry
