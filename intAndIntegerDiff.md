"Integer" is an arbitrary precision type: it will hold any number no matter how big, up to the limit of your machine's memory…. This means you never have arithmetic overflows. On the other hand it also means your arithmetic is relatively slow. Lisp users may recognise the "bignum" type here.

"Int" is the more common 32 or 64 bit integer. Implementations vary, although it is guaranteed to be at least 30 bits.

Int is the type of machine integers, whose range is determined by the size of a machine word (64bit/32bit).

Integer is a arbitrary precision() integers, whose range is determined by memory size.

Learn you a haskell says that Int is more efficient

http://stackoverflow.com/questions/3429291/haskell-int-and-integer

compare and learn by thinking about python