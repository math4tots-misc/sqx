# sqx

sqx programming language

Squirrel with mods.

I tried making my own language, but it was really slow. Squirrel is fast and has most of the features I really want. I just wished some of the syntax was a bit different.

## Done

1. Keyword 'var'. Identical to 'local'. I just like to type 'var' better than 'local'.
1. Keyword 'def'. Identical to 'function'. I just like to type 'def' better than 'function'. 'function' is just too long.
1. '=' style 'def/function' functions. For instance, 'def f() = 123' is equivalent to 'def f() { return 123 }'.
1. Use `double (64+)` instead of `float (32+)` for float. Also always use 64 bit integers. This is easily adjustable with the config section in `squirrel.h`.

## To do

1. Python style triple quote string literals. So """x""" should be the same as "x".
1. `array.fold` method.
1. Overridable equality and hash for `instance` objects. It looks like Squirrel's equality is basically object identity. Tables use object equality, and `==` is object identity except for when comparing an int and float, in which case both values are converted to float for comparison.
1. Python style newline rules. Not indentation based, but will assume '{}' are like begin/end indent, and newlines are ignored iff the most enclosing grouping is either '()' or '[]'. Requires Table literals no longer using '{}' as delimiters first.
1. Related to 'Python style newline rules' -- Table literals will no longer use '{}' as delimiters.
1. Block expressions. I think I need to better understand how the compiler generates bytecode before tackling this one. This may involve turning a lot of things that were previously statements into expressions, and there may be some unforseen consequences. One thing that worries me is what might happen if I allow 'break/continue/return' to appear in an expression and not only as standalone statements.

