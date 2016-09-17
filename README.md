# Exercises for Programmers

## Overview

I'm working through the book [Exercises for Programmers: 57 Challengs to Develop Your Coding Skills](https://pragprog.com/book/bhwb/exercises-for-programmers), and I will implement the first 52 exercises in Elixir.

[View the [table of contents](http://media.pragprog.com/titles/bhwb/TOC.pdf) for a list of the exercises.]

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

## Usage

To run a specific challenge, enter the number in the command-line interface:

```sh
./exercises 1
```
