CREATE TABLE IF NOT EXISTS `users`
(
    `id`       int(10) primary key auto_increment,
    `name`     varchar(255) not null,
    `lastname` varchar(255) not null
);

insert into users (id, name, lastname) value (1, 'Francisco', 'Marcano');
insert into users (id, name, lastname) value (2, 'José', 'Navarro');