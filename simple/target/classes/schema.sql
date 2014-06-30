drop schema IF EXISTS public cascade;
create schema public;

CREATE SEQUENCE test_id_seq
  INCREMENT 1
  MINVALUE 1
  MAXVALUE 9223372036854775807
  START 1
  CACHE 1;
  
ALTER TABLE test_id_seq
  OWNER TO postgres;
       
CREATE TABLE users
(
  user_id integer NOT NULL DEFAULT nextval('test_id_seq'),
  name character varying(50),
  CONSTRAINT test_pkey PRIMARY KEY (user_id)
)
WITH (
  OIDS=FALSE
);
ALTER TABLE users
  OWNER TO postgres;