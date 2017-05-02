
## Useful gdb instructions

Invoke on executable from terminal:
```
$ gdb program.run
```

To view instruction streat and register state:
```
(gdb) layout asm
(gdb) layout reg
```

To start and step through instructions:
```
(gdb) start
(gdb) si
```

To run or resume program to completion:
```
(gdb) run
(gdb) continue
```

To print register contents:
```
(gdb) x $eax
```

