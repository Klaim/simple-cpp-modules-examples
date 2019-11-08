
This is a small example of using module, as described there: https://quuxplusone.github.io/blog/2019/11/07/modular-hello-world/
but using build2 to handled the compilation steps.

How To Build
------------

0. Install `build2` (you might need the stage version, depends on what you want to do)
1. Make sure you have installed at least one compiler which supports modules.
2. In this directory: `b` builds with the same compiler you used to install `build2`
 - With clang: `b config.cxx=clang++`
 - With gcc: `b config.cxx=g++`
 - With msvc: `b config.cxx=cl`
 - With a specific clang installed with it's version name: `b config.cxx=clang++-9`
 - With a custom compiler (maybe one you built yourself): `b config.cxx=path/to/the/cpp/compiler`
More about compilation with build2: https://build2.org/doc.xhtml


Beware that not all compilers support all modules features yet. For example at the moment msvc don't support modules partitions (but it's incoming).

With Libraries
--------------

A slightly more complex example is in the `with_libs` directory, where we have a module which is in a separate library from the executable.
In this case, I use a feature provided by `build2`:  `__symexport` which automatically handles symbol import/export when building a dynamic library.


