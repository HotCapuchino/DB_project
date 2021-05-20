CREATE TABLE `positions` (
	`id` int NOT NULL AUTO_INCREMENT,
	`vacancy` VARCHAR(200) NOT NULL UNIQUE,
	`base_salary` int UNSIGNED NOT NULL,
	`extra_salary` int UNSIGNED NOT NULL,
	`holidays_per_year` int UNSIGNED NOT NULL,
	`vacancy_amount` int UNSIGNED NOT NULL,
	PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;