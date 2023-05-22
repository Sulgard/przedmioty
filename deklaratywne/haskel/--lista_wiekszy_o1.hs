--lista_wieskszy_o1 (definicja rekurencyjna)

lista_wiekszy_o1::[Int]->[Int]
lista_wiekszy_o1:: []=[]
lista_wiekszy_o1 (x:xs)=(x+1):(lista_wiekszy_o1 xs)
