new_if predicate then_clause else_clause = do
                                             if predicate then then_clause
                                             else else_clause

abs' a = if a > 0 then a else -a
sqr' a = a * a
average a b = (a + b) / 2
eps = 0.0000000001

sqrt' y = go 1
  where
    goodEnough x = abs' (sqr' x - y) < eps
    improve x = average x (y/x)
    go guess = new_if (goodEnough guess) guess (go (improve guess))
