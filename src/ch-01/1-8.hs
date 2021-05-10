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
