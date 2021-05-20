-- аэропорт, из которого отправляется рейс
ALTER TABLE `flights` ADD CONSTRAINT `flights_origin_fk` FOREIGN KEY (`origin_id`) 
REFERENCES `airport`(`id`) ON DELETE RESTRICT ON UPDATE CASCADE;
-- аэропорт, куда рейс прибывает
ALTER TABLE `flights` ADD CONSTRAINT `flights_destination_fk` FOREIGN KEY (`destination_id`) 
REFERENCES `airport`(`id`) ON DELETE RESTRICT ON UPDATE CASCADE;
-- самолет, на котором осуществляется полет
ALTER TABLE `flights` ADD CONSTRAINT `flights_plane_fk` FOREIGN KEY (`plane_id`) 
REFERENCES `plane`(`id`) ON DELETE RESTRICT ON UPDATE CASCADE;
-- статус полета
ALTER TABLE `flights` ADD CONSTRAINT `flights_status_fk` FOREIGN KEY (`status_id`) 
REFERENCES `flight_statuses`(`id`) ON DELETE RESTRICT ON UPDATE CASCADE;
-- должность каждого сотрудника
ALTER TABLE `company_staff` ADD CONSTRAINT `company_staff_position_fk` FOREIGN KEY (`position_id`) 
REFERENCES `positions`(`id`) ON DELETE RESTRICT ON UPDATE CASCADE;
-- номер полета в заказе
ALTER TABLE `orders` ADD CONSTRAINT `orders_flight_fk` FOREIGN KEY (`flight_id`) 
REFERENCES `flights`(`id`) ON DELETE RESTRICT ON UPDATE CASCADE;
-- номер билета в заказе
ALTER TABLE `orders` ADD CONSTRAINT `orders_ticket_fk` FOREIGN KEY (`ticket_id`) 
REFERENCES `ticket`(`id`) ON DELETE RESTRICT ON UPDATE CASCADE;
-- номер пассажира в заказе
ALTER TABLE `orders` ADD CONSTRAINT `orders_customer_fk` FOREIGN KEY (`customer_id`) 
REFERENCES `customers`(`id`) ON DELETE RESTRICT ON UPDATE CASCADE;
-- номер рейса
ALTER TABLE `flights_staff` ADD CONSTRAINT `flights_staff_flight_fk` FOREIGN KEY (`flight_id`) 
REFERENCES `flights`(`id`) ON DELETE CASCADE ON UPDATE CASCADE; 
-- номер сотрудника в связующей таблице
ALTER TABLE `flights_staff` ADD CONSTRAINT `flights_staff_person_fk` FOREIGN KEY (`staff_id`) 
REFERENCES `company_staff`(`id`) ON DELETE CASCADE ON UPDATE CASCADE;
-- номер сотрудника в связующей таблице
ALTER TABLE `staff_salaries` ADD CONSTRAINT `salaries_person_fk` FOREIGN KEY (`staff_id`) 
REFERENCES `company_staff`(`id`) ON DELETE CASCADE ON UPDATE CASCADE;
-- статус самолета
ALTER TABLE `plane` ADD CONSTRAINT `plane_status_fk` FOREIGN KEY (`status_id`) 
REFERENCES `plane_statuses`(`id`) ON DELETE RESTRICT ON UPDATE CASCADE;
-- статус заказа
ALTER TABLE `orders` ADD CONSTRAINT `order_status_fk` FOREIGN KEY (`status_id`)
REFERENCES  `order_statuses`(`id`) ON DELETE RESTRICT ON UPDATE CASCADE;
-- номер самолета 
ALTER TABLE `plane_milleage` ADD CONSTRAINT `plane_id_fk` FOREIGN KEY(`plane_id`)
REFERENCES  `plane`(`id`) ON DELETE CASCADE ON UPDATE CASCADE; 