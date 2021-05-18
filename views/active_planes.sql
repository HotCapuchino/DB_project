CREATE OR REPLACE VIEW `active_planes`
AS 
(SELECT * from plane WHERE YEAR(start_date) + validity_period >= YEAR(NOW()) AND  status_id = 1);