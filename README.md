# Exercises for Programmers

I'm working through the book [Exercises for Programmers: 57 Challengs to Develop Your Coding Skills](https://pragprog.com/book/bhwb/exercises-for-programmers).
I'll be implementing the exercises using Elixir.

## Installation

### Requirements

- Elixir 1.3
- git

### Steps

Make sure Elixir 1.3 installed and clone this repository locally.  In the 
cloned respository direction, run the following commands:

```sh
mix deps.get
mix compile
mix escript.build
```

### Miscellany

If you want to run the tests:

```sh
mix test --trace
```

To see the test coverage:

```sh
mix coveralls
```
