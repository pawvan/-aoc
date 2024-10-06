-- data Point =Point int int 
-- data shape = Circle | square 

--function defination 
add::Int-> Int->Int 
add x y = x+y 
sub ::Int -> Int -> Int 
sub x y = x-y


{-
Higher-Order Functions: Functions that take other functions as arguments or return them.
-}

add :: (Int-> Int) -> Int -> Int 
add f x = f x 
