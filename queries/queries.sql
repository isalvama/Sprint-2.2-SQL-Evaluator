-- 1. Llista el nom de tots els productes que hi ha en la taula producto.
SELECT DISTINCT(nombre) FROM tienda.producto;

-- 2. Llista els noms i els preus de tots els productes de la taula producto.
SELECT nombre, precio FROM tienda.producto;

-- 3. Llista totes les columnes de la taula producto.
SHOW COLUMNS FROM tienda.producto;

-- 4. Llista el nom dels productes, el preu en euros (precio_eur) i el preu en dòlars estatunidencs (precio_usd) amb un tipus de canvi de 1 € = 1 $.
SELECT nombre, precio
AS precio_eur,
precio * 1 AS precio_usd
FROM tienda.producto;

-- 5. Llista el nom dels productes, el preu en euros i el preu en dòlars estatunidencs (amb un tipus de canvi de 1 € = 1,1 $ i arrodonint el resultat a dues xifres decimals). Utilitza els següents àlies per a les columnes: nom del producte, euros, dòlars.
SELECT nombre AS nombre, precio AS euros, ROUND(precio * 1.1, 2) AS dòlars FROM tienda.producto;

-- 6. Llista els noms (nombre) i els preus de tots els productes de la taula producto, convertint els noms a majúscula.
SELECT UCASE(nombre) AS nombre, precio
FROM tienda.producto;

-- 7. Llista els noms (nombre) i els preus (precio) dels productes de la taula producto, convertint els noms a minúscula.
SELECT LCASE(nombre) AS nombre, precio FROM tienda.producto;

-- 8. Llista el nom de tots els fabricants en una columna, i en una altra columna obtingui en majúscules els dos primers caràcters del nom del fabricant (iniciales).
SELECT nombre, UCASE(LEFT(nombre, 2)) AS iniciales FROM tienda.fabricante;

-- 9. Llista els noms i els preus dels productes, arrodonint el valor del preu (precio)
SELECT nombre, ROUND(precio * 1) AS precio FROM tienda.producto;

-- 10. Llista els noms i els preus de tots els productes (precio truncado) de la taula producto, truncant el valor del preu per a mostrar-lo sense cap xifra decimal.
SELECT nombre AS nombre, TRUNCATE(precio, 0) AS 'precio truncado' FROM tienda.producto;

-- 11. Mostra una llista amb els codis dels fabricants que apareixen a la taula producto, incloent possibles repeticions.
SELECT codigo_fabricante FROM tienda.producto;

-- 12. Llista el codi dels fabricants que tenen productes en la taula producto, eliminant els codis que apareixen repetits.
SELECT DISTINCT(codigo_fabricante) FROM tienda.producto;

-- 13. Llista els noms dels fabricants ordenats de manera ascendent
SELECT nombre FROM tienda.fabricante ORDER BY nombre;

-- 14. Llista els noms dels fabricants ordenats de manera descendent
SELECT nombre FROM tienda.fabricante ORDER BY nombre DESC;

-- 15. Llista els noms i els preus dels productes ordenats, en primer lloc, pel nom de manera ascendent i, en segon lloc, pel preu de manera descendent.
SELECT nombre, precio FROM tienda.producto ORDER BY nombre, precio DESC;

-- 16. Retorna una llista amb les 5 primeres files de la taula fabricante.
SELECT * FROM tienda.fabricante LIMIT 5;

-- 17. Retorna una llista amb 2 files a partir de la quarta fila de la taula fabricante. La quarta fila també s'ha d'incloure en la resposta.
SELECT * FROM tienda.fabricante LIMIT 2, 2;

-- 18. Llista el nom i el preu del producte més barat. (Utilitza solament les clàusules ORDER BY i LIMIT).
SELECT nombre, precio FROM tienda.producto ORDER BY precio ASC LIMIT 1;

-- 19. Llista el nom i el preu del producte més car. (Utilitza solament les clàusules ORDER BY i LIMIT).
SELECT nombre, precio FROM tienda.producto ORDER BY precio DESC LIMIT 1;

-- 20. Llista el nom de tots els productes del fabricant el codi de fabricant del qual és igual a 2.
SELECT nombre FROM tienda.fabricante where codigo = 2;

-- 21. Retorna una llista amb el nom del producte, preu i nom de fabricant (nombre del fabricante) de tots els productes de la base de dades.
SELECT p.nombre, p.precio, f.nombre AS nombre del fabricante FROM tienda.producto p JOIN tienda.fabricante f ON p.codigo_fabricante = f.codigo;

-- 22. Llista tots els productes amb nom, preu i nom del fabricant (nombre del fabricante) ordenats alfabèticament.
SELECT p.nombre, p.precio, f.nombre AS nombre del fabricante FROM tienda.producto p JOIN tienda.fabricante f ON p.codigo_fabricante = f.codigo ORDER BY p.nombre;

-- 23. Retorna una llista amb el codi del producte, nom del producte, codi del fabricant (codigo fabricante) i nom del fabricant (nombre fabricante), de tots els productes de la base de dades.
SELECT p.codigo, p.nombre, p.codigo_fabricante, f.nombre AS nombre del fabricante FROM tienda.producto p JOIN tienda.fabricante f ON p.codigo_fabricante = f.codigo;

-- 24. Retorna el nom, el preu i el nom del fabricant (fabricante), del producte més barat.
SELECT p.nombre, p.precio, f.nombre AS fabricant FROM tienda.producto p JOIN tienda.fabricante f on f.codigo = p.codigo_fabricante ORDER BY p.precio LIMIT 1;

-- 25. Retorna el nom del producte, el preu i el nom del seu fabricant (fabricante), del producte més car.
SELECT p.nombre, p.precio, f.nombre AS fabricante FROM tienda.producto p JOIN tienda.fabricante f on f.codigo = p.codigo_fabricante ORDER BY p.precio DESC LIMIT 1;

-- 26. Retorna una llista amb nom i preu de tots els productes del fabricant Lenovo.
SELECT p.nombre, p.precio FROM tienda.producto p JOIN tienda.fabricante f on p.codigo_fabricante = f.codigo WHERE f.nombre = 'Lenovo';

-- 27. Retorna una llista amb nom i preu de tots els productes del fabricant Crucial que tinguin un preu major que 200 €
SELECT p.nombre, p.precio FROM tienda.producto p JOIN tienda.fabricante f on p.codigo_fabricante = f.codigo WHERE f.nombre = 'Crucial' AND p.precio > 200;

-- 28. Retorna un llistat amb nom, preu i nom del fabricant (fabricante) de tots els productes dels fabricants Asus, Hewlett-Packard i Seagate. Sense utilitzar l'operador IN.
SELECT p.nombre, p.precio, f.nombre AS fabricante FROM tienda.producto p JOIN tienda.fabricante f ON p.codigo_fabricante = f.codigo WHERE f.nombre = 'Asus' OR 'Hewlett-Packard' OR 'Seagate';

-- 29. Retorna un llistat amb nom, preu i nom del fabricant (fabricante) de tots els productes dels fabricants Asus, Hewlett-Packard i Seagate. Fent servir l'operador IN.
SELECT p.nombre, p.precio, f.nombre AS fabricante FROM tienda.producto p JOIN tienda.fabricante f ON p.codigo_fabricante = f.codigo WHERE f.nombre IN('Asus', 'Hewlett-Packard', 'Seagate');

-- 30. Retorna un llistat amb el nom, el preu i el nom del fabricant (fabricante) dels productes, on el nom del fabricant acabi en la lletra 'e'.
SELECT p.nombre, p.precio, f.nombre AS fabricante FROM tienda.producto p JOIN tienda.fabricante f ON p.codigo_fabricante = f.codigo WHERE SUBSTR(f.nombre, (LENGTH(f.nombre))) = 'e';

-- 31. Retorna un llistat amb el nom del producte, el seu preu i el nom del fabricant (fabricante), per a tots aquells productes els fabricants dels quals contenen la lletra 'w' en el seu nom.
SELECT p.nombre, p.precio, f.nombre AS fabricante FROM tienda.producto p JOIN tienda.fabricante f ON p.codigo_fabricante = f.codigo WHERE f.nombre LIKE '%w%';

-- 32. Retorna un llistat amb el nom del producte, el seu preu i el nom del fabricant (fabricante), per a tots els productes amb un preu igual o superior a 180 €. Ordena els resultats, primer pel preu en ordre descendent i després pel nom del producte en ordre ascendent.
SELECT p.nombre, p.precio, f.nombre AS fabricante FROM tienda.producto p JOIN tienda.fabricante f ON p.codigo_fabricante = f.codigo WHERE p.precio >= 180 ORDER BY p.precio DESC, p.nombre;

-- 33. Retorna un llistat amb el codi i el nom de fabricant (fabricante), solament d'aquells fabricants que tenen productes associats en la base de dades.
SELECT f.codigo, f.nombre FROM tienda.fabricante f JOIN tienda.producto p ON f.codigo = p.codigo_fabricante;

-- 34. Retorna un llistat de tots els fabricants que existeixen en la base de dades, juntament amb els productes que té cadascun d'ells. Inclou també els fabricants que no tenen cap producte. Mostra el nom del fabricant (fabricante) i el nom del producte (producto).
SELECT f.nombre AS nombre, p.nombre AS producto FROM tienda.fabricante f LEFT JOIN tienda.producto p ON p.codigo_fabricante = f.codigo;

-- 35. Retorna un llistat on només apareguin els noms dels fabricants (fabricante) que no tenen cap producte associat.
SELECT f.nombre AS fabricante FROM tienda.fabricante f LEFT JOIN tienda.producto p ON p.codigo_fabricante = f.codigo WHERE p.nombre IS NULL;

-- 36. Retorna tots els productes del fabricant Lenovo. (Sense utilitzar INNER JOIN).
SELECT p.nombre FROM tienda.producto p, tienda.fabricante f WHERE p.codigo_fabricante = f.codigo AND f.nombre = 'Lenovo';

-- 37. Retorna totes les dades dels productes que tenen el mateix preu que el producte més car del fabricant Lenovo. (Sense usar INNER JOIN).
SELECT * FROM tienda.producto p, tienda.fabricante f WHERE p.codigo_fabricante = f.codigo AND f.nombre = 'Lenovo'; -- Todo

-- 38. Llista el nom del producte més car del fabricant Lenovo.
SELECT p.nombre FROM tienda.producto p, tienda.fabricante f WHERE p.codigo_fabricante = f.codigo AND f.nombre = 'Lenovo' ORDER BY p.precio DESC LIMIT 1;

-- 39. Llista el nom del producte més barat del fabricant Hewlett-Packard.
SELECT p.nombre FROM tienda.producto p, tienda.fabricante f WHERE p.codigo_fabricante = f.codigo AND f.nombre = 'Lenovo' ORDER BY p.precio DESC LIMIT 1;

-- 40. Retorna tots els productes de la base de dades que tenen un preu major o igual al producte més car del fabricant Lenovo.
SELECT p.nombre FROM tienda.producto p, tienda.fabricante f WHERE p.codigo_fabricante = f.codigo AND f.nombre = 'Lenovo' ORDER BY p.precio DESC LIMIT 1; -- todo

-- 41. Llista tots els productes del fabricant Asus que tenen un preu superior al preu mitjà de tots els seus productes.
SELECT * FROM tienda.producto p, tienda.fabricante f WHERE p.codigo_fabricante = f.codigo AND p.nombre = 'Asus' AND p.precio >= (SUM(p.precio WHERE f.nombre = 'ASUS')/COUNT(p.precio WHERE f.nombre = 'ASUS')); -- todo

-- 1. Retorna un llistat amb el primer cognom, segon cognom i el nom de tots els/les alumnes. El llistat haurà d'estar ordenat alfabèticament de menor a major pel primer cognom, segon cognom i nom.
SELECT nombre, apellido1, apellido2 FROM universidad.persona WHERE tipo = 'alumno' ORDER BY apellido1, nombre, apellido2;

-- 2. Esbrina el nom i els dos cognoms dels alumnes que no han donat d'alta el seu número de telèfon en la base de dades. (nombre, apellido1, apellido2)
    SELECT nombre, apellido1, apellido2 FROM universidad.persona WHERE tipo = 'alumno' AND telefono IS NULL;

-- 3. Retorna el llistat dels alumnes que van néixer en 1999. (id, nombre, apellido1, apellido2, fecha_nacimiento)
    SELECT id, nombre, apellido1, apellido2, fecha_nacimiento FROM universidad.persona WHERE tipo = 'alumno' AND year(fecha_nacimiento) = 1999;

-- 4. Retorna el llistat de professors/es que no han donat d'alta el seu número de telèfon en la base de dades i a més el seu NIF acaba en K. (nombre, apellido1, apellido2, nif)
    SELECT nombre, apellido1, apellido2, nif FROM universidad.persona WHERE tipo = 'profesor' AND telefono IS NULL AND nif LIKE '%K';

-- 5. Retorna el llistat de les assignatures que s'imparteixen en el primer quadrimestre, en el tercer curs del grau que té l'identificador 7. (id, nombre, cuatrimestre, curso, id_grado)
    SELECT id, nombre, cuatrimestre, curso, id_grado FROM universidad.asignatura WHERE cuatrimestre = 1 AND curso = 3 AND id_grado = 7;

-- 6. Retorna un llistat dels professors/es juntament amb el nom del departament al qual estan vinculats. El llistat ha de retornar quatre columnes, primer cognom, segon cognom, nom i nom del departament.
-- El resultat estarà ordenat alfabèticament de menor a major pels cognoms i el nom. (apellido1, apellido2, nombre, departamento)
    SELECT p.apellido1, p.apellido1, d.nombre
    FROM universidad.persona p
        JOIN universidad.profesor p2
            ON p.id = p2.id_profesor
        JOIN universidad.departamento d
        ON d.id = p2.id_departamento
    WHERE tipo = 'profesor'
    ORDER BY p.apellido1, p.apellido2, p.nombre;

-- 7. Retorna un llistat amb el nom de les assignatures, any d'inici i any de fi del curs escolar de l'alumne/a amb NIF 26902806M. (nombre, anyo_inicio, anyo_fin)
    SELECT a.nombre, c.anyo_inicio, c.anyo_fin
    FROM universidad.asignatura a
        JOIN universidad.alumno_se_matricula_asignatura alum_se_matri
            ON alum_se_matri.id_asignatura = a.id
        JOIN universidad.curso_escolar c
        ON c.id = alum_se_matri.id_curso_escolar
    JOIN universidad.persona p on p.id = alum_se_matri.id_alumno
    WHERE p.nif = '26902806M';

-- 8. Retorna un llistat amb el nom de tots els departaments que tenen professors/es que imparteixen alguna assignatura en el Grau en Enginyeria Informàtica (Pla 2015). (nombre)
SELECT d.nombre
    FROM universidad.departamento d
        JOIN universidad.profesor prof
            ON prof.id_departamento = d.id
        JOIN universidad.asignatura a
        ON prof.id_profesor = a.id_profesor
        JOIN universidad.grado g on g.id = a.id_grado
        WHERE g.nombre = 'Grado en Ingeniería Informática (Plan 2015)';

-- 9. Retorna un llistat amb tots els alumnes que s'han matriculat en alguna assignatura durant el curs escolar 2018/2019. (nombre, apellido1, apellido2)
    SELECT DISTINCT p.nombre, p.apellido1, p.apellido2
    FROM universidad.persona p
        JOIN universidad.alumno_se_matricula_asignatura asma
            ON asma.id_alumno = p.id
        JOIN universidad.curso_escolar ce
        ON ce.id = asma.id_curso_escolar
        WHERE ce.anyo_inicio = 2018 AND ce.anyo_fin = 2019;

-- Resol les 6 següents consultes utilitzant les clàusules LEFT JOIN i RIGHT JOIN.

-- 10. Retorna un llistat amb els noms de tots els professors/es i els departaments que tenen vinculats.
-- El llistat també ha de mostrar aquells professors/es que no tenen cap departament associat.
-- El llistat ha de retornar quatre columnes, nom del departament, primer cognom, segon cognom i nom del professor/a.
-- El resultat estarà ordenat alfabèticament de menor a major pel nom del departament, cognoms i el nom.
-- (departamento, apellido1, apellido2, nombre)
    SELECT DISTINCT d.nombre, p.nombre, p.apellido1, p.apellido2
    FROM universidad.persona p
         LEFT JOIN universidad.profesor prof
            ON p.id = prof.id_profesor
         LEFT JOIN universidad.departamento d
        ON prof.id_departamento = d.id
            WHERE p.tipo = 'profesor'
    ORDER BY d.nombre, p.apellido1, p.apellido2, p.nombre;

-- 11. Retorna un llistat amb els professors/es que no estan associats a un departament. (apellido1, apellido2, nombre)
    SELECT DISTINCT p.apellido1, p.apellido2, p.nombre
    FROM universidad.persona p
         LEFT JOIN universidad.profesor prof
            ON p.id = prof.id_profesor
         LEFT JOIN universidad.departamento d
        ON prof.id_departamento IS NULL
            WHERE p.tipo = 'profesor' AND prof.id_profesor IS NULL;

-- 12. Retorna un llistat amb els departaments que no tenen professors/es associats. (nombre)
    SELECT DISTINCT d.nombre
    FROM universidad.profesor prof
         RIGHT JOIN universidad.departamento d
            ON prof.id_departamento = d.id
         WHERE prof.id_departamento IS NULL;

-- 13. Retorna un llistat amb els professors/es que no imparteixen cap assignatura. (apellido1, apellido2, nombre)
    SELECT DISTINCT pers.apellido1, pers.apellido2, pers.nombre
    FROM universidad.persona pers
    LEFT JOIN universidad.profesor prof
    ON pers.id = prof.id_profesor
    LEFT JOIN universidad.asignatura a
    ON prof.id_profesor = a.id_profesor
    WHERE pers.tipo = 'profesor' AND  a.id IS NULL;

-- 14. Retorna un llistat amb les assignatures que no tenen un professor/a assignat. (id, nombre)
    SELECT a.id, a.nombre
    FROM universidad.asignatura a
    WHERE a.id_profesor IS NULL;

-- 15. Retorna un llistat amb tots els departaments que no han impartit assignatures en cap curs escolar. (nombre)
    SELECT d.nombre
    FROM universidad.departamento d
    LEFT JOIN universidad.profesor p ON d.id = p.id_departamento
    LEFT JOIN universidad.asignatura a ON p.id_profesor = a.id_profesor
    LEFT JOIN universidad.alumno_se_matricula_asignatura asma on a.id = asma.id_asignatura
    LEFT JOIN universidad.curso_escolar ON asma.id_curso_escolar = curso_escolar.id;
-- Consultes resum:
-- 16. Retorna el nombre total d'alumnes que hi ha. (total)
    SELECT COUNT(id) AS total
    FROM universidad.persona
    WHERE tipo = 'alumno';
-- 17. Calcula quants alumnes van néixer en 1999. (total)
    SELECT COUNT(id) AS total
    FROM universidad.persona
    WHERE tipo = 'alumno' AND (fecha_nacimiento BETWEEN '1999-01-01' AND '1999-12-31');

-- 18. Calcula quants professors/es hi ha en cada departament. El resultat només ha de mostrar dues columnes, una amb el nom del departament i una altra amb el nombre de professors/es que hi ha en aquest departament. El resultat només ha d'incloure els departaments que tenen professors/es associats i haurà d'estar ordenat de major a menor pel nombre de professors/es. (departamento, total)
    SELECT d.nombre AS departamento, COUNT(id_profesor) AS total
    FROM universidad.profesor
    JOIN universidad.departamento d on d.id = profesor.id_departamento
    GROUP BY d.nombre;

-- 19. Retorna un llistat amb tots els departaments i el nombre de professors/es que hi ha en cadascun d'ells. Tingui en compte que poden existir departaments que no tenen professors/es associats. Aquests departaments també han d'aparèixer en el llistat. (departamento, total)
    SELECT d.nombre AS departamento, COUNT(id_profesor) AS total
    FROM universidad.profesor
    RIGHT JOIN universidad.departamento d on d.id = profesor.id_departamento
    GROUP BY d.nombre;

-- 20. Retorna un llistat amb el nom de tots els graus existents en la base de dades i el nombre d'assignatures que té cadascun. Tingues en compte que poden existir graus que no tenen assignatures associades. Aquests graus també han d'aparèixer en el llistat. El resultat haurà d'estar ordenat de major a menor pel nombre d'assignatures. (grau, total)
    SELECT g.nombre AS grau, COUNT(a.id) AS total
    FROM universidad.asignatura a
    RIGHT JOIN universidad.grado g ON g.id = a.id_grado
    GROUP BY g.nombre
    ORDER BY total DESC;

-- 21. Retorna un llistat amb el nom de tots els graus existents en la base de dades i el nombre d'assignatures que té cadascun, dels graus que tinguin més de 40 assignatures associades. (grau, total)
    SELECT g.nombre AS grau, COUNT(a.id) AS total
    FROM universidad.asignatura a
    LEFT JOIN universidad.grado g ON g.id = a.id_grado
    GROUP BY g.id, g.nombre
    HAVING total >= 50;

-- 22. Retorna un llistat que mostri el nom dels graus i la suma del nombre total de crèdits que hi ha per a cada tipus d'assignatura. El resultat ha de tenir tres columnes: nom del grau, tipus d'assignatura i la suma dels crèdits de totes les assignatures que hi ha d'aquest tipus. (grau, tipus, total_creditos)
    SELECT g.nombre AS grau, a.tipo AS tipus, COUNT(creditos) AS total_creditos
    FROM universidad.asignatura a
    JOIN universidad.grado g ON g.id = a.id_grado
    GROUP BY g.nombre, a.tipo;

-- TODO 23. Retorna un llistat que mostri quants alumnes s'han matriculat d'alguna assignatura en cadascun dels cursos escolars. El resultat haurà de mostrar dues columnes, una columna amb l'any d'inici del curs escolar i una altra amb el nombre d'alumnes matriculats. (anyo_inicio, total)
    SELECT g.nombre AS grau, a.tipo AS tipus, COUNT(creditos) AS total_creditos
    FROM universidad.asignatura a
    JOIN universidad.grado g ON g.id = a.id_grado
    GROUP BY g.nombre, a.tipo;

-- 24. Retorna un llistat amb el nombre d'assignatures que imparteix cada professor/a. El llistat ha de tenir en compte aquells professors/es que no imparteixen cap assignatura. El resultat mostrarà cinc columnes: id, nom, primer cognom, segon cognom i nombre d'assignatures. El resultat estarà ordenat de major a menor pel nombre d'assignatures. (id, nombre, apellido1, apellido2, total)
-- 25. Retorna totes les dades de l'alumne/a més jove.
-- 26. Retorna un llistat amb els professors/es que tenen un departament associat i que no imparteixen cap assignatura. (apellido1, apellido2, nombre)
