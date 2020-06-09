# Tic Tac Toe

This is a learning situation, to demonstrate your capabilities regarding testing.

## Setup

Fork and clone the repository. There is a _Gemfile_, so install the dependencies
with `bundle install`. The only dependencies are rspec and byebug.

## Scenario

You have just taken over a legacy implementation of the game "Tic Tac Toe"
that the previous developer never finished. There is an example program that
"drives" part of the game, so you can at least see how the game's Board works.

Run it:

```
ruby lib/driver.rb
```

You should see the output that describes the results after a couple of 'x' and
'o' turns. Feel free to take a look at _lib/driver.rb_ and modify it.

## What to do

Run the test suite.

```
rspec
```

You should see a handful of failing tests.

### Step 1

Here you are given the tests for a Game class, and should try to implement the
Game class such that it passes the tests.

Read the tests in _spec/game_spec.rb_.

Take a look at the first test that is failing, and fix the implementation in
_game.rb_ to get the test to pass.

You goal is to complete the implementation of the Game class. Don't modify the
file _spec/game_spec.rb_. If you get stuck, switch to _Step 2_.

### Step 2

here you are given an implementation of a Board, and should try to cover the
class with tests.

Read the implementation of the Board class in _lib/board.rb_.

In _spec/board_spec.rb_, test each method of the Board class. You can skip `to_s`.
Don't modify the file _lib/board.rb_.

Think about how to test. If you only have one test for each method, you've missed something.

Focus on behavior, not implementation.

### Step 3

Complete the implementation of Game, driven by tests, and complete the tests of
Board, given the implementation. If you have questions about the features, just ask.

### Step 4

Once your test suite is passing, rerun the driver program:

```
ruby lib/driver.rb
```

And verify the output is what you expect.

### Step 4

Refactor the test suite and/or implementations. There are a couple opportunities
to improve the test suite, or refactor the implementations in Board, and
demonstrate your understanding of writing a maintainable test suite. Be sure
that the suite stays green.

### Step 5

Create a pull request.

## Extra Challenges

Now that you are green, and "shamelessly" so, look at the Game `winner` method.
Investigate how you can make this better through object-oriented techniques.
Is there a way to remove that big conditional statement? Perhaps the Board class,
or a new class, might help.


(c) 2020 Yong Bakos. All rights reserved.
