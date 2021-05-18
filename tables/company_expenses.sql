CREATE TABLE `company_expenses`(
    `id` int NOT NULL AUTO_INCREMENT,
    `cost` INT UNSIGNED NOT NULL,
    `cost_date` DATE NOT NULL,
    `cost_id` SMALLINT NOT NULL,
    PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;