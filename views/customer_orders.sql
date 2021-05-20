CREATE
OR REPLACE VIEW `customer_orders` AS (
  SELECT
    `ticket`.ticket_number,
    IF(`ticket`.is_business, 'Yes', 'No') as `business flight`,
    `orders`.order_date,
    CONCAT(`a1`.name, ', ', `a1`.country) as `start airport`,
    CONCAT(`a2`.name, ', ', `a2`.country) as `destination airport`,
    `ticket`.cost
  FROM
    `orders`
    join `ticket` on `orders`.ticket_id = `ticket`.id
    join `flights` on `orders`.flight_id = `flights`.id
    join `airport` `a1` on `a1`.id = `flights`.origin_id
    join `airport` `a2` on `a2`.id = `flights`.destination_id
  where
    `orders`.customer_id = 1
);