# Week 4


### Refactoring

> Improving the design of existing code.

or

> A change made to the internal structure of software
to make it easier to understand and cheaper to modify
without changing its observable behavior.

The primary reasons to refactor are:

1. Elevate the level of abstraction
2. Make intentions clear
3. Make the code easier to change
4. Make the code easier to reuse

We will start with `platform_test.rb`.

If time allows I will be demonstrating a Ruby mocking library named
[mocha](http://gofreerange.com/mocha/docs/). If you're coding along you will
need to `gem install mocha` first.

### List of Refactoring Techniques

The definitive list is Martin Fowler's [Refactoring Catalog](https://refactoring.com/catalog/).


We will utilize many of the following in class:

* Well-Named Method
* Remove Duplication
* Extract Method
* Replace Magic Value with Named Constant
* Consolidate Conditionals
* Condition Reversal via Guard Clauses
* Introduce Gateway
