CREATE TABLE `company_staff` (
	`id` int NOT NULL AUTO_INCREMENT,
	`firstname` tinytext NOT NULL,
	`lastname` tinytext NOT NULL,
	`birthdate` DATE NOT NULL,
	`position_id` int NOT NULL,
	`work_experience` int NOT NULL,
	PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;