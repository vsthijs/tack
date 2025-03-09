toplevel statements
-------------------

function definition:
```
func <name> <arg0> <arg1> <argn> -> <ret> do
    <expressions>
end
```

function declaration:
```
func <name> <arg0> <arg1> <argn> -> <ret> extern
```

constant definition:
```
const <name> <value>
```
TODO: support small compile-time expressions in const value

include statement:
```
include "<file>"
```

typedef statement:
```
typedef <name> <type>
```
TODO: lex, parse, compile

extern variable/symbol:
```
extern <name> <type>
```
TODO: lex, parse, compile

static memory:
```
static <name> <type> <value>
```
TODO: lex, parse, compile

expressions
-----------

- 0: pushes zero to the stack.
- +, -, *, /: apply the corresponding math operations to the top two numbers
              on the stack.
- drop, over, swap, rot, dup: just like forth.
- int, uint, bool, ptr: convert to corresponding type.
- int!, uint!, bool!, ptr!: write to a memory address.
    - TODO: lex, parse, compile
- int@, uint@, bool@, ptr@: read from a memory address.
    - TODO: lex, parse, compile

- if <expressions> end
- if <expressions> else <expressions> end

- loop <expressions> end: pop condition from stack, and continue if not zero.
    - TODO: lex, parse, compile

