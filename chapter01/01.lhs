Given: simple x y z = x * (y + z)

Write out all of the steps in the calculation of the value of
simple (simple 2 3 4) 5 6

> simple (simple 2 3 4) 5 6
<> unfold
> simple (2 * (3 + 4)) 5 6
> simple (2 * 7) 5 6
> simple 14 5 6
<> unfold
> 14 * (5 + 6)
> 14 * 11
> 154
