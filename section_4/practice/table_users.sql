-- Table Definition
DROP TABLE users;

CREATE TABLE users (
    "id" varchar(36) NOT NULL DEFAULT gen_random_uuid(),
    "first_name" varchar(100) NOT NULL,
    "last_name" varchar(100) NOT NULL,
    "email" varchar(100) NOT NULL UNIQUE,
    "last_connection" varchar(100) NOT NULL,
    "country" varchar(100) NOT NULL,
    "website" varchar(100) NOT NULL,
    "username" varchar(100) NOT NULL UNIQUE,
    "followers" int4 NOT NULL,
    "following" int4 NOT NULL,
    PRIMARY KEY ("id")
);

