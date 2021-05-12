CREATE TABLE `orders` (
	`id` int NOT NULL AUTO_INCREMENT,
	`flight_id` int NOT NULL,
	`ticket_id` int NOT NULL,
	`customer_id` int NOT NULL,
	`order_date` DATE NOT NULL,
	PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;