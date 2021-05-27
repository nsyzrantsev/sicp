-- recursive process
function1 n | n < 3     = n
            | otherwise = function1 (n-1) + 2*(function1 (n-2)) + 3*(function1 (n-3))

-- function 4
-- function 3 + 2*function 2 + 3*function 1
-- (function 2 + 2*function 1 + 3*function 0) + 2*function 2 + 3*function 1
-- 2 + 2 + 4 + 3
-- 11

-- iterative process
function2 n = function2_iter 2 1 0 n
function2_iter a b c count | count == 0 = c
                           | otherwise  = function2_iter (a+2*b+3*c) a b (count-1)

-- function 4
-- function_iter 2 1 0 4
-- function_iter 4 2 1 3
-- function_iter 11 4 2 2
-- function_iter 25 11 4 1
-- function_iter 59 25 11 0
-- 11
