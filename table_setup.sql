-- must be connected to another database and user to create/ drop desired ones;

\c franpham franpham localhost 5432;
-- must specify all parameters for \c;

DROP DATABASE IF EXISTS indexed_cars;
-- drop database FIRST since cars_user is dependent on it;

DROP USER IF EXISTS cars_user;

CREATE USER cars_user WITH ENCRYPTED PASSWORD 'Ilovecars';

CREATE DATABASE indexed_cars OWNER cars_user;

\c indexed_cars cars_user localhost 5432;
-- to set owner of table, must connect as owner BEFORE creating it;

-- comments cannot be on same line as meta commands, but it's ok for SQL;
\i scripts/car_models.sql;

\i scripts/car_model_data.sql;
\i scripts/car_model_data.sql;
\i scripts/car_model_data.sql;
\i scripts/car_model_data.sql;
\i scripts/car_model_data.sql;
\i scripts/car_model_data.sql;
\i scripts/car_model_data.sql;
\i scripts/car_model_data.sql;
\i scripts/car_model_data.sql;
\i scripts/car_model_data.sql;

\timing
SELECT DISTINCT make_title FROM car_models WHERE make_code = 'LAM';

SELECT DISTINCT model_title FROM car_models WHERE make_code = 'NISSAN'
  AND model_code = 'GT-R';

SELECT make_code, model_code, model_title, year FROM car_models
  WHERE make_code = 'LAM';

SELECT * FROM car_models WHERE year = 2010;
