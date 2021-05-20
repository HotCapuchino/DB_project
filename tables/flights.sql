CREATE TABLE `flights` (
	`id` int NOT NULL AUTO_INCREMENT,
	`flight_number` VARCHAR(200) NOT NULL UNIQUE,
	`origin_id` int NOT NULL,
	`destination_id` int NOT NULL,
	`departure_date` DATE NOT NULL,
	`arrival_date` DATE NOT NULL,
	`plane_id` int NOT NULL,
	`min_passengers` int unsigned NOT NULL,
	`status_id` SMALLINT NOT NULL,
	PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;