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
