-- SCHEMAS
-- https://www.postgresql.org/docs/current/sql-createschema.html
-- Skapar en ny tabell i public. Detta för att public ligger i search_path per default.
CREATE TABLE users (username TEXT, password TEXT) 
-- Skapar ett nytt schema auth. Här kan vi lägga nya tabeller.
CREATE SCHEMA auth;
CREATE SCHEMA postgres;
-- Skapar en ny table i schemat auth. När du skriver auth.users kallas det ett okvalificerat namn.
CREATE TABLE postgres.users (username TEXT, password TEXT);
SELECT * FROM users;
-- Här visar du search_path. Just nu är den $user$ och public.
-- Det betyder att databasen letar i public och $user$ om du inte anger ett schema i din query.
-- $user$ är schemat med samma namn som din användare (i ert fall postgres)
SHOW search_path;
-- Nu sätts search_path till auth för din session.
SET search_path TO auth;
-- Nu kommer den här ge ett error.
SELECT *
FROM employees;
-- Sätter default search_path, en session kan överskriva denna.
ALTER DATABASE postgres
SET search_path TO auth;

-- Tar bort auth och alla objekt inom den.
DROP SCHEMA auth CASCADE;

    /*
     1. schemas (CREATE SCHEMA, DROP SCHEMA CASCADE)
     2. qualified names
     3. SHOW search_path;
     4. SET search_path TO 
     5. ALTER DATABASE <database_name> SET search_path TO schema1,schema2;
     */