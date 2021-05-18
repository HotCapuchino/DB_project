CREATE TABLE `positions` (
	`id` int NOT NULL AUTO_INCREMENT,
	`vacancy` VARCHAR(200) NOT NULL UNIQUE,
	`base_salary` int NOT NULL,
	`extra_salary` int NOT NULL,
	`holidays_per_year` int NOT NULL,
	`vacancy_amount` int NOT NULL,
	PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;