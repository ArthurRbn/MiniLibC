# MiniLibC
x86_64 assembly implementation of C standard library functions.

Implemented functions :
- ``memcpy()``
- ``memmove()``
- ``memset()``
- ``rindex()``
- ``strcasecmp()``
- ``strchr()``
- ``strcmp()``
- ``strcspn()``
- ``strlen()``
- ``strncmp()``
- ``strpbrk()``
- ``strstr()``

To test the functions clone the repository, compile the shared lib using ``make`` and compile a test main without linking stdlib. To be sure to use my functions you can load the symbols dynamically using ``dlopen()``, ``dlsym()`` and ``dlclose()``.

Mark : 19.5/20
