CREATE TABLE `users_ex2_8180099_2020_2021` (
  `username` varchar(45) NOT NULL,
  `name` varchar(45) NOT NULL,
  `surname` varchar(45) NOT NULL,
  `email` varchar(45) NOT NULL,
  `password` varchar(45) NOT NULL,
  PRIMARY KEY (`username`),
  UNIQUE KEY `email_UNIQUE` (`email`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;


INSERT INTO `users_ex2_8180099_2020_2021` (`username`,`name`,`surname`,`email`,`password`) VALUES ('jdoe','John','Doe','jdoe@example.com','1111');
INSERT INTO `users_ex2_8180099_2020_2021` (`username`,`name`,`surname`,`email`,`password`) VALUES ('joken','Jim','Oken','joken@somewhere.gr','1111');
INSERT INTO `users_ex2_8180099_2020_2021` (`username`,`name`,`surname`,`email`,`password`) VALUES ('msmith','Mary','Smith','msmith@example.com','1111');