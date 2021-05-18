-- let's suppose that we get paticular flight_id from server --
CREATE OR REPLACE VIEW `flight_crew`
AS
(SELECT CONCAT(`company_staff`.lastname, ' ', `company_staff`.firstname) AS fullname, `positions`.vacancy 
FROM `flights_staff`
JOIN `company_staff` ON 
`flights_staff`.staff_id = `company_staff`.id
JOIN `positions` ON 
`company_staff`.position_id = `positions`.id
WHERE flight_id = 1);