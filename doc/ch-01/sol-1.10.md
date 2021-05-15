## Exercise 1.10

The following procedure computes a mathematical function called Ackermann’s function.

```scheme
(define (A x y)
  (cond ((= y 0) 0)
        ((= x 0) (* 2 y))
        ((= y 1) 2)
        (else (A (- x 1) 
                 (A x (- y 1))))))
```

What are the values of the following expressions?

```scheme
(A 1 10)
(A 2 4)
(A 3 3)
```

Consider the following procedures, where `A` is the procedure defined above:

```scheme
(define (f n) (A 0 n))
(define (g n) (A 1 n))
(define (h n) (A 2 n))
(define (k n) (* 5 n n))
```

Give concise mathematical definitions for the functions computed by the procedures `f`, `g`, and `h` for positive integer values of `n`. For example, `(k n)` computes ![\Huge x={5*n^2}](https://latex.codecogs.com/svg.image?5*n%5E2).

## Solution

Ackermann function in Haskell:
```haskell
ackermann_function x y | y == 0    = 0
                       | x == 0    = 2 * y
                       | y == 1    = 2
                       | otherwise = ackermann_function (x - 1) (ackermann_function x (y - 1))
```
[Code](../../src/ch-01/1-10.hs)

```scheme
(A 1 10) ; => 1024
(A 2 4)  ; => 65536
(A 3 3)  ; => 65536
```

`(f n)` = ![\Huge x={2*n}](https://latex.codecogs.com/svg.image?2*n), where ![\Huge x={n \in \mathbb{N}}](https://latex.codecogs.com/svg.image?n%20%5Cin%20%5Cmathbb%7BN%7D)  
`(g n)` = ![\Huge x={2^n}](https://latex.codecogs.com/svg.image?2^n), where ![\Huge x={n \in \mathbb{N}}](https://latex.codecogs.com/svg.image?n%20%5Cin%20%5Cmathbb%7BN%7D)  
`(h n)` = ![\Huge x={2^n}](https://latex.codecogs.com/svg.image?2^n), where n = ![\Huge x={1}](https://latex.codecogs.com/svg.image?1), ![\Huge x={2}](https://latex.codecogs.com/svg.image?2), ![\Huge x={2^2}](https://latex.codecogs.com/svg.image?2^2), ![\Huge x=2^{2^{2}}](https://latex.codecogs.com/svg.image?2%5E%7B2%5E%7B2%7D%7D), ![\Huge x=2^{2^{2^{2}}}](https://latex.codecogs.com/svg.image?2%5E%7B2%5E%7B2%5E%7B2%7D%7D%7D)...  
`(k n)` = ![\Huge x={5*n^2}](https://latex.codecogs.com/svg.image?5*n%5E2), where ![\Huge x={n \in \mathbb{N}}](https://latex.codecogs.com/svg.image?n%20%5Cin%20%5Cmathbb%7BN%7D)  
