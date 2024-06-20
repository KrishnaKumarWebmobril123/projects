-- foreign keys for tool manufacturer
ALTER TABLE `tool__references` ADD INDEX(`tool_manu_id`);
-- add foreign key in tool references
ALTER TABLE `tool__references` ADD CONSTRAINT `tool_manu_id_has_tool_manu_details` FOREIGN KEY (`tool_manu_id`) REFERENCES `tool__manufacturers`(`id`) ON DELETE CASCADE ON UPDATE RESTRICT;
-- subscribe
ALTER TABLE `users` ADD `is_subscribed` INT NULL DEFAULT NULL AFTER `email_verified_at`;
--25-09-2023 sagar change
ALTER TABLE `bookmarks` ADD `ebook_id` INT NULL AFTER `subcat_id`;
ALTER TABLE `bookmarks` ADD `page_no` INT NULL AFTER `ebook_id`;
----------------------------28-09-23--------------------
ALTER TABLE `students` ADD `profile_image` TEXT NULL AFTER `country`;

----------------------------29-09-23--------------------
ALTER TABLE `posts` ADD `type` INT NULL AFTER `status`;
ALTER TABLE `posts` CHANGE `type` `type` INT(11) NULL DEFAULT '1';
ALTER TABLE `subcatcontents` ADD `pdf` VARCHAR(255) NULL AFTER `subcat_id`;
ALTER TABLE `event_booking` ADD `date_to` DATE NULL AFTER `booking_date`;
ALTER TABLE `season_events` ADD `date_to` DATE NULL AFTER `event_date`;

ALTER TABLE `chantings` ADD `date_at` DATE NULL AFTER `sutra_id`;

ALTER TABLE `season_events` ADD `booking_status` INT NOT NULL DEFAULT '1' COMMENT '1:open,2:closed,3:fully booked, ' AFTER `pdf`;
ALTER TABLE `season_events` ADD `status` INT NOT NULL DEFAULT '1' COMMENT '1:active,2:in-active' AFTER `booking_status`;
ALTER TABLE `bookmarks` ADD `sutra_id` INT NULL AFTER `id`;

-- 06/12/2023 sagar sql code
ALTER TABLE `students` ADD `status` INT NOT NULL DEFAULT '1' COMMENT '1:active,0:inactive' AFTER `country`;
--31-01-24
ALTER TABLE `event_booking_person_data` CHANGE `person_name` `person_name` VARCHAR(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NULL, CHANGE `person_email` `person_email` VARCHAR(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NULL COMMENT '1 => Male, 2 => Female, 3 => Others';