CREATE TABLE `plane_milleage` (
	`id` int NOT NULL AUTO_INCREMENT,
	`plane_id` int NOT NULL,
	`milleage` INT UNSIGNED NOT NULL,
	PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;