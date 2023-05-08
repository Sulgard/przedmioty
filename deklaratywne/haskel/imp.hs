imp::(Bool,Bool)->Bool
imp(p,q)=case(p,q) of
(True,True)->True
(True,False)->False
(False,True)->True
(False,False)->True
