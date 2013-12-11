-module(basic) % defines the name of the module
-export([mirror/1]) % defines a function that you want to use outside of the module

mirror(Anything) -> Anything
