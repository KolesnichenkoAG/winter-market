/*create table products
(
    id    bigserial primary key,
    title varchar(255),
    price int,
    weight varchar(255),
    description varchar(500)
 сущность - продукт. должен содержать id, название, стоимость, вес, краткое описание.
);
insert into products (title, price, weight, description)
values ('Milk', 80, '900g', 'жирность 2,5%'),
       ('Bread', 25, '400g', 'ржаной'),
       ('Cheese', 300, '500g', 'пармезан');

create table users
(
    id       bigserial primary key,
    username varchar(36) not null,
    password varchar(80) not null,
    email varchar(80) not null
);
сущность - пользователь. должен содержать id, имя, пароль, емайл. Конечно если это зарегистрированные
  пользователи то наверняка еще должен быть телфон, история покупок, может наличие скидки

create table roles
(
    id   bigserial primary key,
    name varchar(50) not null
);
сущность - роль. должна содержать id, имя.

CREATE TABLE users_roles
(
    user_id     bigint not null references users (id),
    role_id     bigint not null references roles (id),
    primary key (user_id, role_id)
);

insert into roles (name)
values ('ROLE_USER'),
       ('ROLE_ADMIN');

insert into users (username, password)
values ('bob', '$2a$12$IPu8IxdkKZWa16YKBWgFaeHSsQwtOb6Wi26a6l6ScMpKS5fyMhpka', 'bob@mail.ru'),
       ('john', '$2a$12$5k3PV2vSQvrHXAQSgEYFmulHD9/6w0LzRTE0T553CsH.9I.66z/V6', 'john@mail.ru');

insert into users_roles (user_id, role_id)
values (1, 1),
       (2, 2);

create table order
(
    id    bigserial primary key,
    title_product  varchar(255),
    price_product int,
    quantity int,
    delivery_address varchar(255),
    total_amount int,
    payment_method varchar(255),
    delivery_date varchar(500)
    сущность - заказ. должен содержать id, название продукта, стоимость продукта, количесвто продукта,
      адрес доставки, итоговая сумма, метод оплаты, дата доставки
);

еще сущность корзина, но как говорили на курсе она не попадает в базу данных,
    а храниться в памяти приложения, думаю у нее должен быть номер, название товара, количество товара,
  итоговая стоимость*/