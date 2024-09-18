-- -- CREATE DATABASE IF NOT EXISTS public;
-- -- USE public;
-- -- CREATE TABLE public.user (
-- --     id SERIAL PRIMARY KEY,
-- --     username VARCHAR(50) UNIQUE NOT NULL
-- -- );
--
-- CREATE TABLE IF NOT EXISTS public."user"
-- (
-- )
--
-- TABLESPACE pg_default;
--
-- ALTER TABLE IF EXISTS public."user"
--     OWNER to postgres;
--
--
-- ALTER TABLE IF EXISTS public."user"
--     ADD COLUMN username character varying COLLATE pg_catalog."default";
--
-- INSERT INTO public."user" (username)a
-- VALUES ('Ford');

CREATE TABLE IF NOT EXISTS public.users
(
    id SERIAL PRIMARY KEY,
    username VARCHAR(50) UNIQUE NOT NULL,
    fullName VARCHAR(50) NULL
)
TABLESPACE pg_default;

ALTER TABLE IF EXISTS public.users
    OWNER to postgres;

INSERT INTO public.users (username, fullName)
VALUES ('jon', 'do');