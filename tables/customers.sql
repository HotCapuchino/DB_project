CREATE TABLE `customers` (
	`id` int NOT NULL AUTO_INCREMENT,
	`firstname` mediumtext NOT NULL,
	`lastname` mediumtext NOT NULL,
	`email` VARCHAR(100) NOT NULL UNIQUE,
	`phone` VARCHAR(50) NOT NULL UNIQUE,
	PRIMARY KEY (`id`)
);