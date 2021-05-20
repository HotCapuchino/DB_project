CREATE
OR REPLACE VIEW `expired_planes` AS (
  SELECT
    *
  from
    plane
  WHERE
    YEAR(start_date) + validity_period < YEAR(NOW())
);