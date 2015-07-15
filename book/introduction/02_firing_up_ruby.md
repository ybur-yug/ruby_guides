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
