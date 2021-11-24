select * from student where Id Studenta I (5,10,15)
order by iloscPunktów desc;

select * from student wehre month(dataUrodzenia) IN (5,9,11);

select * from 
(select * from student order by iloscPuntkow desc limit 3)
order by iloscPunktow asc;


select concat(imie," ",nazwisko), year(curdate()) - year(dataUr) as wiek from student;

create table studenci_top_10 like studenci;

insert into studenci_top_10 from studenci order by ilosc punktow desc limit 10;
