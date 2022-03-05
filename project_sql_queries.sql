USE project_db;

CREATE TABLE `data_sql` (
    `index` INT DEFAULT NULL,
    `Q10_Part_1` TEXT DEFAULT NULL,
    `Q10_Part_2` TEXT DEFAULT NULL,
    `Q10_Part_3` TEXT DEFAULT NULL,
    `Q10_Part_4` TEXT DEFAULT NULL,
    `Q10_Part_5` TEXT DEFAULT NULL,
    `Q10_Part_6` TEXT DEFAULT NULL,
    `Q10_Part_7` TEXT DEFAULT NULL,
    `Q10_Part_8` TEXT DEFAULT NULL,
    `Q10_Part_9` TEXT DEFAULT NULL,
    `Q10_Part_10` TEXT DEFAULT NULL,
    `Q10_Part_11` TEXT DEFAULT NULL,
    `Q10_Part_12` TEXT DEFAULT NULL,
    `Q10_Part_13` TEXT DEFAULT NULL,
    `Q10_Part_14` TEXT DEFAULT NULL,
    `Q10_Part_15` TEXT DEFAULT NULL,
    `Q10_Part_16` TEXT DEFAULT NULL,
    `Q10_OTHER` TEXT DEFAULT NULL
)  ENGINE=INNODB DEFAULT CHARSET=UTF8MB4 COLLATE = UTF8MB4_0900_AI_CI;

DROP table data_sql;

SELECT  * FROM data_sql
LIMIT 10;

-- Para ver agunas de las varaibles únicas
SELECT distinct Q10_Part_1,Q10_Part_2,Q10_Part_3 FROM data_sqlV3
GROUP BY Q10_Part_1,Q10_Part_2,Q10_Part_3;


-- Se sugiere limpiar el error por null ( utilizando un bucle en Python)

-- Reemplazar el valor de la columna
UPDATE data_sqlV3
SET Q10_Part_1 = NULL
WHERE Q10_Part_1 = 'ERROR';


-- Elimnar la columna innecesaria
ALTER TABLE data_sqlV3
DROP COLUMN d482xta;

-- El resto de cosas vamos a limpiarlo con el conector de mysql en python


-- EXPORTAR LOS DATOS LIMPIOS A CSV. FIN PARTE SQL
