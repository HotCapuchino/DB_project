CREATE TABLE `staff_salaries`(
    `id` int NOT NULL AUTO_INCREMENT,
    `staff_id` int NOT NULL,
    `salary` int NOT NULL,
    `fee_date` date NOT NULL,
    PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;