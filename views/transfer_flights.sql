CREATE OR REPLACE VIEW `transfer_flights`
AS
(select CONCAT(`a1`.name, ', ', `a1`.country) as `start airport`, `f1`.flight_number as `first flight number`, 
CONCAT(`a2`.name, ', ', `a2`.country) as `transfer airport`,
`f2`.flight_number as `second flight number`, 
CONCAT(`a3`.name, ', ', `a3`.country) as `destination airport`
from `flights` `f1` 
join `flights` `f2` 
on `f1`.destination_id = `f2`.origin_id 
join `airport` `a1`
on `f1`.origin_id = `a1`.id
join `airport` `a2`
on `f1`.destination_id = `a2`.id
join `airport` `a3`
on `f2`.destination_id = `a3`.id
where datediff(`f2`.departure_date, `f1`.arrival_date) <= 1 
and datediff(`f2`.departure_date, `f1`.arrival_date) >= 0 
and `f2`.id - `f1`.id < 2);