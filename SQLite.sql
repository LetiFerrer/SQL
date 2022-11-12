--Creamos la tabla pokemon y typing_chart
--definimos nuestras primary keys y cada una de las columnas
CREATE TABLE pokemon 
([type_1] INTERGER PRIMARY KEY, [id] INTERGER, [name] TEXT, [attack] INTERGER, [defense] INTERGER, [speed] INTERGER, [legendary] TEXT)

CREATE TABLE typing_chart
([type_1] INTERGER PRIMARY KEY, [types] TEXT, [normal] TEXT, [fire] INTERGER, [water] INTERGER, [electric] INTERGER,
 [grass] INTERGER, [ice] INTERGER, [fighting] INTERGER, [poison] INTERGER, [ground] INTERGER, [flying] INTERGER, [psychic] INTERGER,
 [bug] INTERGER, [rock] INTERGER, [ghost] INTERGER, [dragon] INTERGER, [dark] INTERGER, [steel] INTERGER, [fairy] INTERGER)
 
 
 --cruzamos el archivp ókemon con el archivo typing_chart 
 --para obetener la tabla resumen
 SELECT * FROM pokemon
 FULL  OUTER JOIN  typing_chart
 ON pokemon.type_1 = typing_chart.type_1
 
 
 --Analizamos los pokemons con la minima defensa
 SELECT * 
 FROM pokemon
 WHERE defense = (SELECT min(defense) FROM pokemon)
 
 
  --Analizamos los pokemons con la maxima defensa
 SELECT * 
 FROM pokemon
 WHERE defense = (SELECT max(defense) FROM pokemon)
 
 
  --Analizamos los pokemons con la minima fuerza de ataque
 SELECT * 
 FROM pokemon
 WHERE attack = (SELECT min(attack) FROM pokemon)
 
   --Analizamos los pokemons con la maxima fuerza de ataque
 SELECT * 
 FROM pokemon
 WHERE attack = (SELECT max(attack) FROM pokemon)
 
 
   --Analizamos los pokemons con la minima velocidad de movimiento
 SELECt * 
 FROM pokemon
 WHERE speed = (SELECT min(speed) FROM pokemon)
 
 
    --Analizamos los pokemons con la maxima velocidad de movimiento
 SELECT * 
 FROM pokemon
 WHERE speed = (SELECT max(speed) FROM pokemon)
 
 
 --Total de pokemons mas rapidos
 SELECT
 COUNT * AS  "Mas rapido"
 FROM pokemon
 WHERE speed = (SELECT max(speed) FROM pokemon)
 
 --Total de pokemons mas lentos
  SELECT
 COUNT * AS  "Mas lento"
 FROM pokemon
 WHERE speed = (SELECT min(speed) FROM pokemon)
 
 --Total de pokemons con mayor poder de ataque
  SELECT
 COUNT * AS  "Mayor poder de ataque"
 FROM pokemon
 WHERE attack = (SELECT max(attack) FROM pokemon)
  
 --Total de pokemons con menor poder de ataque
  SELECT
 COUNT * AS  "Menor poder de ataque"
 FROM pokemon
 WHERE attack = (SELECT min(attack) FROM pokemon)
  
 --Total de pokemons con mayor nivel de defensa
  SELECT
 COUNT * AS  "Mayor nivel de defensa"
 FROM pokemon
 WHERE defense = (SELECT max(defense) FROM pokemon)
  
 --Total de pokemons con menor nivel de defensa
  SELECT
 COUNT * AS  "Menor nivel de defensa"
 FROM pokemon
 WHERE defense = (SELECT min(defense) FROM pokemon)
  
  
 --Analizamos el maximo y minimo poder de ataque de los pokemons
 SELECT max(attack) FROM pokemon
 SELECT min(attack) FROM pokemon
 
   
 --Analizamos el maximo y minimo nivel de defensa de los pokemons
 SELECT max(defense) FROM pokemon
 SELECT min(defense) FROM pokemon
 
 --Analizamos el maximo y minimo nivel y velocidad de los pokemons
 SELECT max(speed) FROM pokemon
 SELECT min(speed) FROM pokemon
 
 --Analizamos el promedio de pokemons no legendarios y legendarios
 SELECT AVG([legendary] WHERE legendary = false) AS "Promedio de no legendarios" FROM pokemon
 SELECT AVG([legendary] WHERE legendary = true) AS "Promedio de no legendarios" FROM pokemon
 
 --Analizamos el total de pokemons legendarios y no legnedarios
 SELECT SUM([legendary] WHERE legendary = false) AS "Suma de no legendarios" FROM pokemon
 SELECT SUM([legendary] WHERE legendary = false) AS "Suma de legendarios" FROM pokemon
 
 
 --CONCLUSIONES
 --Este analisis nos ayuda a contemplar que tipo de pokemons son mejores o peores en batalla dado que tenemos
 --un listado con los pokemos de mejores y peores defensas, velocidades y fuerzas de ataque. 
 --Por otra parte sabemos que de los 720 pokemons que existen solo 46 son legendarios, es decir,
 -- solo 8.2% pertenecen a este grupo, lo cual implica que de conseguir 
 -- un aliado pokemon de estos nos aseguraría una probabilidad mayor de ganar un combate.
 --Finalmente, este analisis nos permite decidir qué pokemons, a pesar de no ser legendarios, 
 --vale la pena tener y cuales se deben evitar
 
 
 
 
 
 
 
 
 