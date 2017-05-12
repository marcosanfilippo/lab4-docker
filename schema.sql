-- Table: public."user"

-- DROP TABLE public."user";

CREATE TABLE public."user"
(
    id bigserial NOT NULL,
    email character varying(50) NOT NULL,
    password character varying NOT NULL,
    status integer,
    CONSTRAINT "user_pkey" PRIMARY KEY (id),
    CONSTRAINT unique_email UNIQUE (email)
)