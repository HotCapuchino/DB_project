CREATE TABLE `airport` (
	`id` int NOT NULL AUTO_INCREMENT,
	`name` tinytext NOT NULL,
	`country` tinytext NOT NULL,
	`location` tinytext NOT NULL,
	`max_capacity` INT UNSIGNED NOT NULL,
	PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;