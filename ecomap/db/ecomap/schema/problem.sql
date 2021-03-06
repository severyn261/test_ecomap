/*
    This table holds all particular 
    information about problem entity.
*/
CREATE TABLE IF NOT EXISTS `problem` (
 `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
 `title` varchar(255) character set utf8 collate utf8_unicode_ci NOT NULL,
 `content` varchar(255) NOT NULL,
 `proposal` varchar(255) NOT NULL,        # User can propose a solution
 `severity` enum('1', '2', '3', '4', '5', '6', '7', '8', '9', '10') NOT NULL DEFAULT '1',
 `status` enum('Solved', 'Unsolved') 
        NOT NULL DEFAULT 'Unsolved',    # not resolved or resolved
 `latitude` float NOT NULL,           # coordinats of
 `longitude` float NOT NULL,         # location
 `is_enabled` boolean NOT NULL,
 `created_date` int(11) unsigned NOT NULL, # date of creation
 `problem_type_id` int(10) unsigned NOT NULL,
 `user_id` int(10) unsigned NOT NULL,
 `update_date`  int(11) unsigned,
 PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
