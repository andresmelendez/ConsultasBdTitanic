-- Cuántas personas tienen 54 años:
SELECT * FROM titanic WHERE Age = 54;

-- Select para seleccionar datos de la base de datos:
SELECT * FROM titanic;

-- Filtrar resultados con WHERE (28 años):
SELECT * FROM titanic WHERE Age = 28;

-- Filtrar edades de manera ascendente:
SELECT * FROM titanic ORDER BY Age ASC;

-- Contar filas con COUNT (28 años):
SELECT COUNT(*) FROM titanic WHERE Age = 28;

-- Listar los nombres y edades de todos los pasajeros:
SELECT Name, Age FROM titanic;

-- Ordenar las edades de manera descendente:
SELECT * FROM titanic ORDER BY Age DESC;

-- Contar el número de supervivientes:
SELECT COUNT(*) FROM titanic WHERE Survived = 1;

-- Listar a los pasajeros por clase:
SELECT Pclass, COUNT(*) AS Num_Pasajeros FROM titanic GROUP BY Pclass;

-- Buscar a pasajeros que abordaron en un puerto específico:
SELECT * FROM titanic WHERE Embarked = 'C';

-- 5 consultas modificadas:

-- Contar el número de pasajeros masculinos y femeninos, y mostrar el porcentaje de cada grupo:
SELECT Sex, COUNT(*) AS Num_Pasajeros, 
       (COUNT(*) * 100.0 / (SELECT COUNT(*) FROM titanic)) AS Porcentaje
FROM titanic 
GROUP BY Sex;

-- Listar los nombres, tarifas y clase de los pasajeros que pagaron más de 50, ordenados por tarifa descendente:
SELECT Name, Fare, Pclass 
FROM titanic 
WHERE Fare > 50 
ORDER BY Fare DESC;

-- Obtener el promedio de edad de los pasajeros que viajaron en primera clase y sobrevivieron:
SELECT AVG(Age) AS Promedio_Edad_Supervivientes 
FROM titanic 
WHERE Pclass = 1 AND Survived = 1;

--Listar los pasajeros que viajaron en la primera clase (Pclass = 1) y que tienen un precio de boleto (Fare) mayor a 100
SELECT PassengerId, Name, Fare
FROM titanic
WHERE Pclass = 1 AND Fare > 100;

--Contar el número de pasajeros que sobrevivieron y el número que no sobrevivieron
SELECT Survived, COUNT(*) AS Count
FROM titanic
GROUP BY Survived;