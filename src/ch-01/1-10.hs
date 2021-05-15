ackermann_function x y | y == 0    = 0
                       | x == 0    = 2 * y
                       | y == 1    = 2
                       | otherwise = ackermann_function (x - 1) (ackermann_function x (y - 1))

function1 n = ackermann_function 0 n
function2 n = ackermann_function 1 n
function3 n = ackermann_function 2 n
