CREATE
OR REPLACE VIEW `estimated_month_salary` AS (
  SELECT
    `cs`.id,
    `cs`.firstname,
    `cs`.lastname,
    `positions`.vacancy,
    (
      `positions`.base_salary + `cs`.work_experience * `positions`.extra_salary
    ) as total_salary
  FROM
    `company_staff` AS `cs`
    JOIN `positions` ON `cs`.position_id = `positions`.id
  ORDER BY
    `positions`.id
);