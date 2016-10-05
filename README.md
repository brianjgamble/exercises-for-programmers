# Exercises for Programmers

## Overview

I'm using the book [Exercises for Programmers: 57 Challengs to Develop Your Coding Skills](https://pragprog.com/book/bhwb/exercises-for-programmers) as a source of unique exercises that I will implement in Elixir.

[View the [table of contents](http://media.pragprog.com/titles/bhwb/TOC.pdf) for a list of the exercises.]

To implement each exercise, I'm focused on the following:

- problem statement
- example output
- constraints

*For now, I'm skipping the challenges in each exercise since some suggest writing alternate versions or creating a GUI.*

## Completed So Far

| Chapter | Exercises |
| --------|:---------:|
| 2       | 1 - 6     |

## Installation

### Requirements

- Elixir 1.3
- git

### Steps

1.  Clone this repository locally.
2.  In the cloned directory, run the following commands:

```sh
mix deps.get
mix compile
mix escript.build
```

### Miscellany

If you want to run the tests (with detailed reporting):

```sh
mix test --trace
```

To see the test coverage:

```sh
mix coveralls
```

## Usage

To run a specific exercise, specify the number in the command-line executable:

```sh
./exercises 1
```
