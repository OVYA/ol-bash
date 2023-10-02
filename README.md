# ol-bash

The OVYA Library Bash Shell Function (`ol-bash`) is a small bash script that
acts as a library for bash scripts. It provides a couple of functions
that makes the lives of most people using shell scripts a bit easier.

This project is a fork of the [original work of Louwrentius](https://github.com/SkypLabs/bsfl).

## Getting started

In order to use `ol-bash`, you have to include the library in your bash
scripts. You can do it with an absolute path :

    source <absolute path to `ol-bash`>

For example :

    source /opt/lib/ol-bash.sh

Or with a relative path :

    declare -r DIR=$(cd "$(dirname "$0")" && pwd)
    source $DIR/<relative path to ol-bash>

## What's next ?

The best way to learn how `ol-bash` works is to look at the examples
available in the examples folder.

## Documentation

The online documentation is available [here](ovya.github.io/bsfl).

Building the documentation is done by using Doxygen :

    cd <ol-bash repository>/doc
    doxygen Doxyfile

or

    cd <ol-bash repository>
    make doc

## Dependencies

BSFL is implemented for bash version 4. Prior versions of bash will
fail at interpreting its code.

In addition, `ol-bash` depends of some external programs. Here is the list
of these programs :

* tr
* logger
* date
* tput
* grep
* printf
* sed
* getent
* read

However, we try to get as much as possible a standalone
library. Hence, some of these external dependencies will be removed in
the future.

## Unit tests

`ol-bash` uses [Bats](https://github.com/sstephenson/bats) testing framework to verify the correct behaviour
of its functions.

To run all the tests :

    bats <ol-bash repository>/test

or

    cd <ol-bash repository>
    make test

To run only the tests of a specific group :

    bats <ol-bash repository>/test/<test file>

For example, for the network group :

    bats <ol-bash repository>/test/network.bats

## Get involved !

This project is still under development. Contributions are welcomed.

## License

[New BSD](http://opensource.org/licenses/BSD-3-Clause)
