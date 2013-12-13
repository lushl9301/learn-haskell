we always see '\x acc' in fold(l/r)
what's that?
see this one:
g (g (g (g z 3) 4) 5) 6)

see in the middle of it.
z is an accumulator, if we just make g as addtion, which will make z + 3 as a new accumulator for next layer of function.
that's what i know about accumulator and fold.
