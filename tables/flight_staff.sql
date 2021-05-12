CREATE TABLE `flights_staff` (
	`id` int NOT NULL AUTO_INCREMENT,
	`flight_id` int NOT NULL,
	`staff_id` int NOT NULL,
	PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;