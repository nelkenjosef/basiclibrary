CREATE TABLE IF NOT EXISTS `#__basiclibrary_books` (
	`book_id` int(11) NOT NULL AUTO_INCREMENT,
	`user_id` int(11) DEFAULT NULL,
	`isbn` varchar(255) DEFAULT NULL,
	`title` varchar(255) DEFAULT NULL,
	`summary` text DEFAULT NULL,
	`pages` varchar(55) DEFAULT NULL,
	`image` varchar(255) DEFAULT NULL,
	`publish_date` varchar(255) DEFAULT NULL,
	`created` datetime NOT NULL,
	`modified` datetime NOT NULL,
	`lent` tinyint(2) DEFAULT 0,
	`due_date` datetime NOT NULL,
	`lent_uid` varchar(255) DEFAULT NULL,
	`published` tinyint(2) DEFAULT 0,
	PRIMARY KEY (`book_id`)
) ENGINE=InnoDB AUTO_INCREMENT=0 DEFAULT CHARSET=utf8;

CREATE TABLE IF NOT EXISTS `#__basiclibrary_libraries` (
	`library_id` int(11) NOT NULL AUTO_INCREMENT,
	`user_id` int(11) DEFAULT NULL,
	`name` varchar(255) DEFAULT NULL,
	`description` varchar(255) DEFAULT NULL,
	`published` tinyint(2) DEFAULT 1,
	`created` datetime NOT NULL,
	`modified` datetime NOT NULL,
	PRIMARY KEY (`library_id`)
) ENGINE=InnoDB AUTO_INCREMENT=0 DEFAULT CHARSET=utf8;

CREATE TABLE IF NOT EXISTS `#__basiclibrary_waitlists` (
	`waitlist_id` int(11) NOT NULL AUTO_INCREMENT,
	`user_id` int(11) DEFAULT NULL,
	`book_id` int(11) DEFAULT NULL,
	`fulfilled` tinyint(2) DEFAULT 0,
	`fulfilled_time` datetime NOT NULL,
	`created` datetime NOT NULL,
	`modified` datetime NOT NULL,
	PRIMARY KEY (`waitlist_id`)
) ENGINE=InnoDB AUTO_INCREMENT=0 DEFAULT CHARSET=utf8;

CREATE TABLE IF NOT EXISTS `#__basiclibrary_wishlists` (
	`wishlist_id` int(11) NOT NULL AUTO_INCREMENT,
	`user_id` int(11) DEFAULT NULL,
	`book_id` int(11) DEFAULT NULL,
	`created` datetime NOT NULL,
	`modified` datetime NOT NULL,
	`note` varchar(255) DEFAULT NULL,
	PRIMARY KEY (`wishlist_id`)
) ENGINE=InnoDB AUTO_INCREMENT=0 DEFAULT CHARSET=utf8;
