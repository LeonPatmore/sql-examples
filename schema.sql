CREATE DATABASE IF NOT EXISTS mydatabase;
USE mydatabase;

CREATE TABLE `countries`(
    `id` BIGINT UNSIGNED NOT NULL AUTO_INCREMENT PRIMARY KEY,
    `name` VARCHAR(255) NOT NULL
);
CREATE TABLE `people`(
    `id` BIGINT UNSIGNED NOT NULL AUTO_INCREMENT PRIMARY KEY,
    `name` VARCHAR(255) NOT NULL,
    `country` BIGINT UNSIGNED NOT NULL
);
ALTER TABLE
    `people` ADD CONSTRAINT `people_country_foreign` FOREIGN KEY(`country`) REFERENCES `countries`(`id`);

INSERT INTO countries VALUES (NULL, "uk");
INSERT INTO countries VALUES (NULL, "germany");
INSERT INTO countries VALUES (NULL, "spain");
INSERT INTO countries VALUES (NULL, "spain");

INSERT INTO people VALUES (NULL, "bob", 1);
INSERT INTO people VALUES (NULL, "peter", 1);
INSERT INTO people VALUES (NULL, "john", 1);
INSERT INTO people VALUES (NULL, "leon", 2);
INSERT INTO people VALUES (NULL, "sam", 2);
