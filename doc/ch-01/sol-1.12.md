Exercise 1.12

The following pattern of numbers is called *Pascal's* triangle.

![\Large x={\[\begin{array}{ccccccccccc} & & & & & 1 & & & & & \cr & & & & 1 & & 1 & & & & \cr & & & 1 & & 2 & & 1 & & & \cr & & 1 & & 3 & & 3 & & 1 & & \cr & 1 & & 4 & & 6 & & 4 & & 1 & \cr & & & & &\cdots& & & & & \cr\end{array}\] }](https://latex.codecogs.com/svg.image?%5Cbegin%7Barray%7D%7Bccccccccccc%7D%20%20&%20%20%20%20&%20%20%20%20&%20%20%20%20&%20%20%20%20&%20%201%20&%20%20%20%20&%20%20%20%20&%20%20%20%20&%20%20%20%20&%20%20%20%5Ccr%20%20&%20%20%20%20&%20%20%20%20&%20%20%20%20&%20%201%20&%20%20%20%20&%20%201%20&%20%20%20%20&%20%20%20%20&%20%20%20%20&%20%20%20%5Ccr%20%20&%20%20%20%20&%20%20%20%20&%20%201%20&%20%20%20%20&%20%202%20&%20%20%20%20&%20%201%20&%20%20%20%20&%20%20%20%20&%20%20%20%5Ccr%20%20&%20%20%20%20&%20%201%20&%20%20%20%20&%20%203%20&%20%20%20%20&%20%203%20&%20%20%20%20&%20%201%20&%20%20%20%20&%20%20%20%5Ccr%20%20&%20%201%20&%20%20%20%20&%20%204%20&%20%20%20%20&%20%206%20&%20%20%20%20&%20%204%20&%20%20%20%20&%20%201%20&%20%20%20%5Ccr%20%20&%20%20%20%20&%20%20%20%20&%20%20%20%20&%20%20%20%20&%5Ccdots&%20%20%20%20&%20%20%20%20&%20%20%20%20&%20%20%20%20&%20%20%20%5Ccr%5Cend%7Barray%7D)
The numbers at the edge of the triangle are all 1, and each number inside the triangle is the sum of the two numbers above it. Write a procedure that computes elements of Pascal’s triangle by means of a recursive process.

## Solution

```haskell
pascal_triangle row element | row == 1 || element == 1 || element == row = 1
                            | otherwise = pascal_triangle (row-1) (element-1) + pascal_triangle (row-1) element
```
[Code](../../src/ch-01/1-12.hs)
