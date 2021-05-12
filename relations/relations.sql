ALTER TABLE `flights` ADD CONSTRAINT `flights_origin_fk` FOREIGN KEY (`origin_id`) 
REFERENCES `airport`(`id`) ON DELETE RESTRICT ON UPDATE CASCADE;
ALTER TABLE `flights` ADD CONSTRAINT `flights_destination_fk` FOREIGN KEY (`destination_id`) 
REFERENCES `airport`(`id`) ON DELETE RESTRICT ON UPDATE CASCADE;
ALTER TABLE `flights` ADD CONSTRAINT `flights_plane_fk` FOREIGN KEY (`plane_id`) 
REFERENCES `plane`(`id`) ON DELETE RESTRICT ON UPDATE CASCADE;
ALTER TABLE `flights` ADD CONSTRAINT `flights_status_fk` FOREIGN KEY (`status_id`) 
REFERENCES `flight_statuses`(`id`) ON DELETE RESTRICT ON UPDATE CASCADE;
ALTER TABLE `company_staff` ADD CONSTRAINT `company_staff_position_fk` FOREIGN KEY (`position_id`) 
REFERENCES `positions`(`id`) ON DELETE RESTRICT ON UPDATE CASCADE;
ALTER TABLE `orders` ADD CONSTRAINT `orders_flight_fk` FOREIGN KEY (`flight_id`) 
REFERENCES `flights`(`id`) ON DELETE RESTRICT ON UPDATE CASCADE;
ALTER TABLE `orders` ADD CONSTRAINT `orders_ticket_fk` FOREIGN KEY (`ticket_id`) 
REFERENCES `ticket`(`id`) ON DELETE RESTRICT ON UPDATE CASCADE;
ALTER TABLE `orders` ADD CONSTRAINT `orders_customer_fk` FOREIGN KEY (`customer_id`) 
REFERENCES `customers`(`id`) ON DELETE RESTRICT ON UPDATE CASCADE;
ALTER TABLE `flights_staff` ADD CONSTRAINT `flights_staff_flight_fk` FOREIGN KEY (`flight_id`) 
REFERENCES `flights`(`id`) ON DELETE CASCADE ON UPDATE CASCADE;
ALTER TABLE `flights_staff` ADD CONSTRAINT `flights_staff_person_fk` FOREIGN KEY (`staff_id`) 
REFERENCES `company_staff`(`id`) ON DELETE CASCADE ON UPDATE CASCADE;
ALTER TABLE `salaries` ADD CONSTRAINT `salaries_person_fk` FOREIGN KEY (`staff_id`) 
REFERENCES `company_staff`(`id`) ON DELETE CASCADE ON UPDATE CASCADE;
ALTER TABLE `plane` ADD CONSTRAINT `plane_status_fk` FOREIGN KEY (`status_id`) 
REFERENCES `plane_statuses`(`id`) ON DELETE RESTRICT ON UPDATE CASCADE;