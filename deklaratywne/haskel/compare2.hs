compare::Ord a=>a->a->Ordering
compare a b=if a>b then GT else if a==b then EQ else LT
