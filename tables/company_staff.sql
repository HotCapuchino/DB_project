CREATE TABLE `company_staff` (
  `id` int NOT NULL AUTO_INCREMENT,
  `firstname` tinytext NOT NULL,
  `lastname` tinytext NOT NULL,
  `email` VARCHAR(100) NOT NULL UNIQUE,
  `phone` VARCHAR(50) NOT NULL UNIQUE,
  `birthdate` DATE NOT NULL,
  `position_id` int NOT NULL,
  `work_experience` int UNSIGNED NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE = InnoDB DEFAULT CHARSET = utf8;