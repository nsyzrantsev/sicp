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
