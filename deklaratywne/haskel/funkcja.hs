--f(x)=2*x
--razy_dwa :: Num a => a -> a
razy_dwa x = 2*x

--g(x)=x*x
--kwadrat :: Num a => a -> a --Haskell
--kwadrat :: Integer -> Integer --mój typ
kwadrat x=x*x

--h(x,y)=x^2+y^2
--sum_kw :: Num a => a -> a -> a --Haskell
sum_kw x y = kwadrat x
	   + kwadrat y