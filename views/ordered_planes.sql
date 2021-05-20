CREATE
OR REPLACE VIEW `ordered_planes` AS (
  SELECT
    *
  from
    `plane`
  where
    status_id = 5
);