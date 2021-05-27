## Exercise 1.11

A function f is defined by the rule that.
![\Huge x={f(n) = \begin{cases}  n  & \mbox{if } n < 3, \\ f (n-1) + 2*f (n-2) + 3*f(n-3) & \mbox{if } n \geqslant 3. \end{cases}}](https://latex.codecogs.com/svg.image?f(n)%20=%20%5Cbegin%7Bcases%7D%20%20n%20%20&%20%5Cmbox%7Bif%20%7D%20n%20%3C%203,%20%5C%5C%20f%20(n-1)%20&plus;%202*f%20(n-2)%20&plus;%203*f(n-3)%20&%20%5Cmbox%7Bif%20%7D%20n%20%5Cgeqslant%203.%20%5Cend%7Bcases%7D)
Write a procedure that computes `f` by means of a recursive process. Write a procedure that computes `f` by means of an iterative process.

## Solution

```haskell
-- recursive process
function1 n | n < 3     = n
            | otherwise = function1 (n-1) + 2*(function1 (n-2)) + 3*(function1 (n-3))

-- iterative process
function2 n = function2_iter 2 1 0 n
function2_iter a b c count | count == 0 = c
                           | otherwise  = function2_iter (a+2*b+3*c) a b (count-1)
```
[Code](../../src/ch-01/1-11.hs)
