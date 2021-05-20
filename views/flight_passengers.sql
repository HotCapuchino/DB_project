-- let's suppose that we get paticular flight_id from server --
CREATE OR REPLACE VIEW `flight_passengers`
AS
(SELECT `flights`.flight_number, 
CONCAT(`customers`.lastname, ' ', `customers`.firstname) as fullname, 
`ticket`.ticket_number, IF(`ticket`.is_business = 1, 'Yes', 'No') as `business class`
FROM `flights` 
JOIN `orders` ON 
`flights`.id = `orders`.flight_id
JOIN `customers` ON
`orders`.customer_id = `customers`.id
JOIN `ticket` ON 
`orders`.ticket_id = `ticket`.id
WHERE `flights`.id = 1);