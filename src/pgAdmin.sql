create table toys(
                     id serial primary key,
                     toy_name varchar,
                     made_in varchar,
                     price INTEGER,
                     toys_shop_id INTEGER references toys_shop (id)
);

drop table toys;

create table toys_shop(
                          id serial primary key,
                          shop_name VARCHAR (55),
                          address VARCHAR,
                          number VARCHAR
);

create table shoes_shop(
                           id serial primary key,
                           shop_name VARCHAR (55),
                           addrss VARCHAR,
                           contact_number VARCHAR
);

create table shoes(
                      id serial primary key,
                      shoes_name varchar,
                      size INTEGER,
                      shoes_shop_id INTEGER references shoes_shop (id)
);

create table hospital(
                         id serial primary key,
                         name VARCHAR,
                         address VARCHAR
);

create table doctors(
                        id serial primary key,
                        first_name VARCHAR,
                        last_name VARCHAR,
                        specialty VARCHAR,
                        phone_number VARCHAR,
                        hospital_id INTEGER references hospital (id)
);

create table patients(
                         id serial primary key,
                         first_name VARCHAR,
                         last_name VARCHAR,
                         age INTEGER,
                         hospital_id INTEGER references hospital (id)
);

create table country (
                         id SERIAL PRIMARY KEY,
                         name VARCHAR,
                         population INTEGER
);

create table school(
                       id SERIAL PRIMARY KEY,
                       name VARCHAR,
                       address VARCHAR,
                       email VARCHAR UNIQUE
);

create table clothes(
                        id serial primary key,
                        name VARCHAR,
                        size INTEGER
);



INSERT INTO toys_shop (shop_name, address, number)
VALUES ('La-La-Day','str.Toktogul','32-33-44'),
       ('Bable-gum','str.Kiev','55-44-66');

INSERT INTO toys (toy_name, made_in, price, toys_shop_id)
VALUES ('Police','China',150,1),
       ('Doctor','PRC',200,2);

INSERT INTO shoes_shop (shop_name, addrss, contact_number)
VALUES ('Jyluu but', 'str.Togolok-Moldo 25','11-21-34'),
       ('UGG','str.Jash-Gvardiya-59','55-44-34'),
       ('But-But','str.Panfilov-57','87-35-18');

INSERT INTO shoes (shoes_name, size, shoes_shop_id)
VALUES ('Tiblerland',42,2),
       ('Batford',37,1);

INSERT INTO hospital (name, address)
VALUES ('Mamakeev', 'str.Gagarin-23'),
       ('Respublicanski','str.Moskva'),
       ('3-Detski','Abdrahmanova 1a');

INSERT INTO doctors (first_name, last_name, specialty, phone_number, hospital_id)
VALUES ('Mark','Vodimur','endocrinolog','500-321',1),
       ('Anna','Kvaderman','LOR','300-123',2);

INSERT INTO patients (first_name, last_name, age, hospital_id)
VALUES ('Sara','Jhons',35,1),
       ('Dolly','Kloudi',30,2),
       ('Sam','Smith',26,1),
       ('Wuddy','Klark',45,3);

INSERT INTO country (name, population)
VALUES ('Kyrgyzstan',7000000),
       ('Qatar', 650000);

INSERT INTO school (name, address, email)
VALUES ('Bilimkana','pr.Mira-111','bilimkana@gmail.com'),
       ('Altyn-bilim','str.Alykulov-110','altynbilim@gmail.com'),
       ('#64 school','str.Sovet-220','school64@gmail.com');

INSERT INTO clothes (name, size)
VALUES ('dress',46),
       ('trousers',42),
       ('skirt',38);