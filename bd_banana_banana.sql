use banana;
CREATE TABLE `users` (
  `id` BIGINT PRIMARY KEY NOT NULL AUTO_INCREMENT,
  `name` VARCHAR(255),
  `email` VARCHAR(255),
  `tin` BIGINT,
  `phone` BIGINT,
  `adress` VARCHAR(255)
);

CREATE TABLE `products` (
  `id` BIGINT PRIMARY KEY NOT NULL AUTO_INCREMENT,
  `evaluation` BIGINT,
  `name` VARCHAR(255),
  `description` text,
  `price` DOUBLE,
  `quantity` BIGINT,
  `id_provider` BIGINT
);

CREATE TABLE `providers` (
  `id` BIGINT PRIMARY KEY NOT NULL AUTO_INCREMENT,
  `name` VARCHAR(255),
  `phone` BIGINT,
  `company_name` VARCHAR(255),
  `eni` BIGINT,
  `adress` VARCHAR(255)
);

CREATE TABLE `purchases` (
  `id` BIGINT PRIMARY KEY NOT NULL AUTO_INCREMENT,
  `id_product` BIGINT,
  `id_user` BIGINT
);

ALTER TABLE `purchases` ADD FOREIGN KEY (`id_user`) REFERENCES `users` (`id`);

ALTER TABLE `purchases` ADD FOREIGN KEY (`id_product`) REFERENCES `products` (`id`);

ALTER TABLE `products` ADD FOREIGN KEY (`id_provider`) REFERENCES `providers` (`id`);
