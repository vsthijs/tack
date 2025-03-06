# Tack

Thijs' stack language. It is a simple stack-based language that compiles
using the QBE backend. It compiles to qbe ir, assembly, object file, or binary.
The language is compatible with C, except for vararg functions, so printf is
not usable. Other functions like strlen and puts are.

## Requirements

QBE IR can be generated without any dependencies, but to compile to further
stages, [QBE](https://c9x.me/compile/) is required. QBE is expected in the
PATH.

dependencies:
- QBE
- as (gnu's assembler)
- gcc (cc)

## Syntax

the following main function is equivalent to a C hello world program.

```tack
func main int ptr -> int do
    drop drop  # ignore argc and argv
    "Hello, World!" puts  # print the string to stdout
    drop  # ignore the result of puts
    0  # return 0 as exitcode
end
```

The language is stack-based, so the syntax looks like
[FORTH](https://en.wikipedia.org/wiki/Forth_(programming_language)). A value
like `0` or `"Hello, World!"` is pushed to the stack, and when the `puts`
function from libc is called, it pops the value from stack. Then the `0` that
is pushed in the end of the function is the return value. See [examples](examples/)
for more syntax.

## Compatibility

In the standard library are bindings for libc like stdio.tack and stdlib.tack.
To comply with the sysv calling convention, only one return value is possible.
To return multiple values you will have to find workarounds just like in C.
To add you own bindings, add them like so:

```tack
func my_c_function int -> int extern
```
