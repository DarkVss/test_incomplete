CREATE DATABASE IF NOT EXISTS `contacts_db`;
USE `contacts_db`;

CREATE TABLE IF NOT EXISTS `contacts` (
  `id`   INT(11)      NOT NULL AUTO_INCREMENT,
  `name` VARCHAR(255) NOT NULL,
  PRIMARY KEY (`id`)
);

INSERT INTO `contacts` (`id`, `name`) VALUES
  (1, 'Marcus Moriarty'),
  (2, 'Darius Morgrein'),
  (3, 'Arthas Menethil'),
  (4, 'Cayde 6'),
  (5, 'Neveravin'),
  (6, 'Adam Jensen');

CREATE TABLE IF NOT EXISTS `friendship` (
  `id`               INT(11)    NOT NULL AUTO_INCREMENT,
  `contact_id`       INT(11)    NOT NULL,
  `friend_id`        INT(11)    NOT NULL,
  `request_accepted` TINYINT(1) NOT NULL DEFAULT 0,
  PRIMARY KEY (`id`),
  KEY `contact_id` (`contact_id`),
  KEY `friend_id` (`friend_id`)
);

INSERT INTO `friendship` (`id`, `contact_id`, `friend_id`, `request_accepted`) VALUES
  (1, 1, 2, 1),
  (2, 1, 3, 1),
  (3, 3, 2, 0),
  (4, 1, 4, 1),
  (5, 1, 5, 1),
  (6, 1, 6, 1);