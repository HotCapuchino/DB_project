CREATE TABLE `salaries` (
	`id` int NOT NULL AUTO_INCREMENT,
	`staff_id` int NOT NULL UNIQUE,
	`base_salary` int NOT NULL,
	PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;