--personas con edad igual a 54
SELECT * FROM titanic WHERE Age = '54';

--visualizar toda los datos de la tabla
SELECT * FROM titanic;

--personas con edad igual a 28
SELECT * FROM titanic WHERE Age = '28';

--visualizar todos los datos ordenados por edad de forma ascendente
SELECT * FROM titanic ORDER BY Age ASC;

--contar los registros con edad igual a 28
SELECT COUNT (*) FROM titanic WHERE Age = '28';

--vializar nombre y edad de los pasajeros 
SELECT Name, Age FROM titanic;

--visualizar todos los datos ordenados por edad de forma descendente
SELECT * FROM titanic ORDER BY Age DESC;

--Contar el número de sovrevivientes
SELECT count (*) FROM titanic WHERE Survived = '1';

--vislaizar el numero de pasajeros agrupados por clase
SELECT Pclass, COUNT (*) as Num_Pasajeros FROM titanic GROUP BY Pclass;

--visualizar los pasajeros que abordaron en un puerto especifico
SELECT * FROM titanic WHERE Embarked = 'C';

-----
--Queries Harlan
-----

select Pclass as Clase, count(PassengerId) as Num_Pasajeros 
from titanic 
group by Pclass 
order by Pclass

select Sex as genero, count(PassengerId) as Num_Sovrevivientes
from titanic
where Survived = '1'
group by Sex
order by Num_Sovrevivientes desc

select Pclass as Clase, round(avg(Fare),2) as Precio_Promedio_Boleto
from titanic
GROUP BY Clase
ORDER BY Precio_Promedio_Boleto  desc

SELECT Embarked, count(PassengerId) AS Num_Pasajeros
FROM titanic 
GROUP BY Embarked
ORDER BY Num_Pasajeros desc

SELECT Embarked, count(PassengerId) AS Num_Pasajeros
FROM titanic 
WHERE Survived = '1'
GROUP BY Embarked
ORDER BY Num_Pasajeros desc