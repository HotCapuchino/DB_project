-- let's suppose that we get paticular flight_id from server --
CREATE OR REPLACE VIEW `flight_passengers`
AS
(SELECT `f`.flight_number, CONCAT(`customers`.lastname, ' ', `customers`.firstname) as fullname, 
`ticket`.ticket_number, `ticket`.is_business
FROM `flights` AS `f` WHERE `f`.id = some_id
JOIN `orders` ON 
`f`.id = `orders`.flight_id
JOIN `customers` ON
`orders`.customer_id = `customers`.id
JOIN `ticket` ON 
`orders`.ticket_id = `ticket`.id);