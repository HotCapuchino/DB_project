CREATE TABLE `ticket` (
	`id` int NOT NULL AUTO_INCREMENT,
	`ticket_number` VARCHAR(200) NOT NULL UNIQUE,
	`is_business` tinyint NOT NULL,
	`cost` int NOT NULL,
	PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;