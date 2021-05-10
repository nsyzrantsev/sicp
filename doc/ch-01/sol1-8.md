## Exercise 1.8

Newton’s method for cube roots is based on the fact that if y is an approximation to the cube root of x, then a better approximation is given by the value
![\Large x=\tfrac{x/y^2 + 2*y}{3}](https://latex.codecogs.com/svg.image?%5Ctfrac%7Bx/y%5E2%20&plus;%202*y%7D%7B3%7D%20).
Use this formula to implement a cube-root procedure analogous to the square-root procedure. (In Section 1.3.4 we will see how to implement Newton’s method in general as an abstraction of these square-root and cube-root procedures.)

## Solution

```haskell
abs' a = if a > 0 then a else -a
newton_formula a b = (a/b^2 + 2*b) / 3
eps = 0.000000001

cube_root' x = go 1 0
  where
    goodEnough approximation prev_approximation = abs' (approximation - prev_approximation) < eps
    improve approximation = newton_formula x approximation
    go guess prev_guess
        | goodEnough guess prev_guess = guess
        | otherwise = go (improve guess) guess
```

[Code](../../src/ch-01/1-8.hs)
