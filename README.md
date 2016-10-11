# Exercises for Programmers

## Overview

I'm using the book [Exercises for Programmers: 57 Challengs to Develop Your Coding Skills](https://pragprog.com/book/bhwb/exercises-for-programmers) as a source of unique exercises to implement in Elixir and to demonstrate how I test and write code.  For a list of the exercises, you can view the [table of contents](http://media.pragprog.com/titles/bhwb/TOC.pdf) on pragprog.com.


As I implement each exercise, I'll be focused on the problem statement, example output, and constraints.  I'm skipping the challenges in each exercise since many suggest writing an alternate version or creating a GUI. 

## Completed So Far

| Chapter | Exercises |
|:-------:|:----------|
| 2       | [1](lib/exercises/chapter_two/hello.ex), [2](lib/exercises/chapter_two/count_chars.ex), [3](lib/exercises/chapter_two/quotes.ex), [4](lib/exercises/chapter_two/mad_lib.ex), [5](lib/exercises/chapter_two/simple_math.ex), [6](/lib/exercises/chapter_two/retirement_calc.ex) |

## Installation

### Requirements

- [Elixir 1.3](http://elixir-lang.org/install.html)
- [git](https://git-scm.com/downloads)

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
