pascal_triangle row element | element == 1 || element == row = 1
                            | otherwise = pascal_triangle (row-1) (element-1) + pascal_triangle (row-1) element
