CREATE OR REPLACE VIEW `open_vacancies`
AS 
(select vacancy, vacancies_amount from (select `positions`.vacancy as vacancy, (`positions`.vacancy_amount -  count(`cs`.position_id)) as vacancies_amount  from `company_staff`
as `cs` join `positions` on `positions`.id = `cs`.position_id group by `cs`.position_id order by `positions`.id) as vac_amount WHERE vacancies_amount > 0);
