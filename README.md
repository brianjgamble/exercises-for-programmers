# Exercises for Programmers

I'm working through the book [Exercises for Programmers: 57 Challengs to Develop Your Coding Skills](https://pragprog.com/book/bhwb/exercises-for-programmers).
I'll be implementing the exercises using Elixir.

## Installation

### Requirements

- Elixir 1.3
- git

### Steps

Clone this repository locally, and in the cloned directory, run the following commands:

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
