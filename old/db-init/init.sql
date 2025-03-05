-- https://postgrest.org/en/v12/tutorials/tut1.html

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
VALUES ('jon', 'do') ON CONFLICT (username)
                     DO NOTHING;