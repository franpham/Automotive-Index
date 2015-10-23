-- db indexed_cars

CREATE TABLE IF NOT EXISTS car_models (
 id serial,
 make_code character varying(125) NOT NULL,
 make_title character varying(125) NOT NULL,
 model_code character varying(125) NOT NULL,
 model_title character varying(125) NOT NULL,
 year integer NOT NULL,
 PRIMARY KEY (id)
);

CREATE INDEX year_index ON car_models (year);
CREATE INDEX make_title_index ON car_models (make_title);
-- can index on (lower(make_title)), but searches would need to lower(query) in SELECT SQLs;
