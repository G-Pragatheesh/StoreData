DROP DATABASE IF EXISTS `store`;
CREATE DATABASE `store`;
USE `store`;

CREATE TABLE customers(
	`customersID` int(20) NOT NULL AUTO_INCREMENT,
    `Firstname` VARCHAR(50) NOT NULL,
    `LastName` VARCHAR(50) NOT NULL,
    `Email` VARCHAR(60),
    `PhoneNumber` VARCHAR(50) ,
    `Address` VARCHAR(200) NOT NULL,
    PRIMARY KEY (`customersID`)
)ENGINE=InnoDB AUTO_INCREMENT=1 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
INSERT INTO `customers`(`FirstName`,`LastName`, `Email`, `PhoneNumber`, `Address`) VALUES ('Robert','Kim', 'nicholas81@example.com', '504-925-4660x878', '4549 Davis Street South Shane, IL 70402');
INSERT INTO `customers`(`FirstName`,`LastName`, `Email`, `PhoneNumber`, `Address`) VALUES ('Michael','Payne', 'james46@example.net', '001-826-950-4182x9155', '65520 Martin Islands Chanport, KY 40838');
INSERT INTO `customers`(`FirstName`,`LastName`, `Email`, `PhoneNumber`, `Address`) VALUES ('Larry','Brooks', 'prodriguez@example.com', '555.624.9685x081', '6070 Compton Lodge Apt. 998 Jacksonmouth, MN 30651');
INSERT INTO `customers`(`FirstName`,`LastName`, `Email`, `PhoneNumber`, `Address`) VALUES ('Richard','Goodwin', 'paul14@example.org', '285-941-1594x42554', '05542 Williams Knoll Suite 958 West Annette, MH 28383');
INSERT INTO `customers`(`FirstName`,`LastName`, `Email`, `PhoneNumber`, `Address`) VALUES ('Stephanie','Parsons', 'melissayoung@example.org', null, '0238 Foster Bridge Aprilhaven, IN 04433');
INSERT INTO `customers`(`FirstName`,`LastName`, `Email`, `PhoneNumber`, `Address`) VALUES ('Robert','Adams', null, null , '0374 Aaron Drive East Mariaville, SD 40514');
INSERT INTO `customers`(`FirstName`,`LastName`, `Email`, `PhoneNumber`, `Address`) VALUES ('Kristen','Miller', 'smithkelsey@example.net', null, '78953 Tonya Burg Wardbury, DC 99415');
INSERT INTO `customers`(`FirstName`,`LastName`, `Email`, `PhoneNumber`, `Address`) VALUES ('Johnny','Solis', 'emily07@example.org', '001-308-924-9505', '0592 Lynn Forest Apt. 890 Lake Shawn, NJ 14948');
INSERT INTO `customers`(`FirstName`,`LastName`, `Email`, `PhoneNumber`, `Address`) VALUES ('James','Lin', 'cassandra75@example.org', '363.325.5215', '6980 Richard Park Suite 779 East Toddtown, GU 29587');
INSERT INTO `customers`(`FirstName`,`LastName`, `Email`, `PhoneNumber`, `Address`) VALUES ('Ana','Bell', null, '491.792.2798x19412', '182 Knight Junction Apt. 357 Robinsonland, PA 61201');
INSERT INTO `customers`(`FirstName`,`LastName`, `Email`, `PhoneNumber`, `Address`) VALUES ('Miranda','Morrow', 'williamsrandy@example.org', null, 'PSC 4501, Box 5108 APO AE 07438');
INSERT INTO `customers`(`FirstName`,`LastName`, `Email`, `PhoneNumber`, `Address`) VALUES ('Erica','Williams', 'kevin62@example.net', '001-382-602-7425', '405 Susan Canyon Apt. 576 South Jamesport, AL 01571');
INSERT INTO `customers`(`FirstName`,`LastName`, `Email`, `PhoneNumber`, `Address`) VALUES ('Laura','Jackson', 'bmccarthy@example.org', '866-307-7948', '0205 Joshua Orchard Port Randyborough, IL 78348');
INSERT INTO `customers`(`FirstName`,`LastName`, `Email`, `PhoneNumber`, `Address`) VALUES ('Paul','Parks', 'robert16@example.com', '831-368-9027', '5286 Justin Corner Joshuamouth, GA 83419');
INSERT INTO `customers`(`FirstName`,`LastName`, `Email`, `PhoneNumber`, `Address`) VALUES ('Ronald','Villa', 'rward@example.com', null, '385 Garcia Ports Rodriguezchester, FL 50056');
INSERT INTO `customers`(`FirstName`,`LastName`, `Email`, `PhoneNumber`, `Address`) VALUES ('Jeanette','Wagner', 'barkermorgan@example.net', '480-972-7031', '098 Stephen Key East Trevorberg, PW 63670');
INSERT INTO `customers`(`FirstName`,`LastName`, `Email`, `PhoneNumber`, `Address`) VALUES ('Christina','Perkins', 'brownmichael@example.com', '+1-336-627-5887', '28558 Gutierrez Squares Suite 898 Davidberg, CA 26506');
INSERT INTO `customers`(`FirstName`,`LastName`, `Email`, `PhoneNumber`, `Address`) VALUES ('Jennifer','Johnson', 'elliottedward@example.net', '899.672.5187', '850 Charles Branch Apt. 985 South Andrew, RI 56574');
INSERT INTO `customers`(`FirstName`,`LastName`, `Email`, `PhoneNumber`, `Address`) VALUES ('Kevin','Howard', 'micheleevans@example.org', null, 'PSC 3583, Box 4369 APO AP 02049');
INSERT INTO `customers`(`FirstName`,`LastName`, `Email`, `PhoneNumber`, `Address`) VALUES ('Gina','Wyatt', null, '001-983-418-3302', '533 Samantha Roads Ashleeside, GU 48854');

CREATE TABLE payment_method(
	`payment_method_ID` INT(4) NOT NULL AUTO_INCREMENT,
    `payment_method` VARCHAR(10) NOT NULL,
    PRIMARY KEY (`payment_method_ID`)
)ENGINE=InnoDB AUTO_INCREMENT=1 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
INSERT INTO `payment_method`(`payment_method`) VALUES ('CASH');
INSERT INTO `payment_method`(`payment_method`) VALUES ('CARD');
INSERT INTO `payment_method`(`payment_method`) VALUES ('VOUCHER');

CREATE TABLE transactions(
	`TransactionID` INT(15) NOT NULL AUTO_INCREMENT,
    `customersID` INT(20) NOT NULL,
	`payment_method_ID` INT(4) NOT NULL,
    `Amount` DECIMAL(10,2),
	`TransactionDate` DATE,
    PRIMARY KEY (`TransactionID`)
) ENGINE=InnoDB AUTO_INCREMENT=1 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
INSERT INTO `transactions`(`customersID`, `payment_method_ID`, `Amount`, `TransactionDate`) VALUES ('5', '2', '1084.8', '2023-06-10');
INSERT INTO `transactions`(`customersID`, `payment_method_ID`, `Amount`, `TransactionDate`) VALUES ('16', '1', '2251.99', '2023-07-12');
INSERT INTO `transactions`(`customersID`, `payment_method_ID`, `Amount`, `TransactionDate`) VALUES ('13', '3', '1695.78', '2023-07-22');
INSERT INTO `transactions`(`customersID`, `payment_method_ID`, `Amount`, `TransactionDate`) VALUES ('13', '2', '3052.42', '2023-12-24');
INSERT INTO `transactions`(`customersID`, `payment_method_ID`, `Amount`, `TransactionDate`) VALUES ('7', '2', '4881.96', '2023-12-12');
INSERT INTO `transactions`(`customersID`, `payment_method_ID`, `Amount`, `TransactionDate`) VALUES ('15', '1', '4140.38', '2023-08-25');
INSERT INTO `transactions`(`customersID`, `payment_method_ID`, `Amount`, `TransactionDate`) VALUES ('5', '3', '978.63', '2023-09-20');
INSERT INTO `transactions`(`customersID`, `payment_method_ID`, `Amount`, `TransactionDate`) VALUES ('1', '2', '738.67', '2023-09-28');
INSERT INTO `transactions`(`customersID`, `payment_method_ID`, `Amount`, `TransactionDate`) VALUES ('15', '3', '2846.32', '2023-02-06');
INSERT INTO `transactions`(`customersID`, `payment_method_ID`, `Amount`, `TransactionDate`) VALUES ('18', '3', '4732.23', '2023-03-25');
INSERT INTO `transactions`(`customersID`, `payment_method_ID`, `Amount`, `TransactionDate`) VALUES ('1', '1', '4801.12', '2023-01-20');
INSERT INTO `transactions`(`customersID`, `payment_method_ID`, `Amount`, `TransactionDate`) VALUES ('17', '2', '839.96', '2023-01-13');
INSERT INTO `transactions`(`customersID`, `payment_method_ID`, `Amount`, `TransactionDate`) VALUES ('12', '1', '4336.5', '2023-11-27');
INSERT INTO `transactions`(`customersID`, `payment_method_ID`, `Amount`, `TransactionDate`) VALUES ('20', '2', '3452.97', '2023-10-02');
INSERT INTO `transactions`(`customersID`, `payment_method_ID`, `Amount`, `TransactionDate`) VALUES ('6', '3', '4350.85', '2023-04-23');