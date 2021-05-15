## Exercise 1.7

The good-enough? test used in computing square roots will not be very effective for finding the square roots of very small numbers. Also, in real computers, 
arithmetic operations are almost always performed with limited precision. This makes our test inadequate for very large numbers. Explain these statements, with examples showing how the test fails for small and large numbers. An alternative strategy for implementing good-enough? is to watch how guess changes from one iteration to the next and to stop when the change is a very small fraction of the guess. Design a square-root procedure that uses this kind of end test. Does this work better for small and large numbers?

## Solution

```haskell
abs' a = if a > 0 then a else -a
average a b = (a + b) / 2
eps = 0.000000001

sqrt' y = go 1 0
  where
    goodEnough x prev_x = abs' (x - prev_x) < eps
    improve x = average x (y/x)
    go guess prev_guess
        | goodEnough guess prev_guess = guess
        | otherwise = go (improve guess) guess
```

[Code](../../src/ch-01/1-7.hs)
