-- Change table order
ALTER TABLE `users`
CHANGE `id` `id` INT UNSIGNED NOT NULL auto_increment FIRST,
CHANGE `username` `username` VARCHAR(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NOT NULL AFTER `id`,
CHANGE `password` `password` VARCHAR(256) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NOT NULL AFTER `username`,
CHANGE `role` `role` VARCHAR(32) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NOT NULL DEFAULT 'user' AFTER `password`,
CHANGE `firstName` `firstName` VARCHAR(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NOT NULL AFTER `role`,
CHANGE `lastName` `lastName` VARCHAR(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NOT NULL AFTER `firstName`,
CHANGE `email` `email` VARCHAR(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NOT NULL AFTER `lastName`,
CHANGE `age` `age` INT NOT NULL AFTER `email`,
CHANGE `updatedAt` `updatedAt` DATETIME NOT NULL DEFAULT CURRENT_TIMESTAMP DEFAULT_GENERATED AFTER `country`,
CHANGE `is_deleted` `is_deleted` TINYINT(1) NOT NULL DEFAULT '0' AFTER `createdAt`;

ALTER TABLE `users`
CHANGE `is_deleted` `is_deleted` TINYINT(1) NOT NULL DEFAULT '0' AFTER `country`,


-- //change name of table
ALTER TABLE customers CHANGE first_name customer_name VARCHAR(50);
