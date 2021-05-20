CREATE TABLE `plane`(  
    `id` int NOT NULL AUTO_INCREMENT,
	`manufacturer` tinytext NOT NULL,
	`model` tinytext NOT NULL,
	`start_date` DATE NOT NULL,
	`validity_period` int unsigned NOT NULL,
	`capacity` int unsigned NOT NULL,
	`charged_for` int NOT NULL COMMENT 'distance in kilometres',
	`status_id` int NOT NULL DEFAULT 1,
	PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;