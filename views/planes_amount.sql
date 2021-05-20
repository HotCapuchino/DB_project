CREATE
or REPLACE VIEW `planes_amount` AS (
  SELECT
    manufacturer,
    model,
    COUNT(*) AS plane_amount
  FROM
    plane
  GROUP BY
    manufacturer,
    model
)
ORDER BY
  plane_amount DESC;