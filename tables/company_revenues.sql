CREATE TABLE `company_revenues`(
    `id` int NOT NULL AUTO_INCREMENT,
    `fee` INT UNSIGNED  NOT NULL,
    `fee_date` DATE NOT NULL,
    `is_taxable` TINYINT NOT NULL,
    `revenue_id` SMALLINT NOT NULL,
    PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;