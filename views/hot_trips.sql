CREATE
OR REPLACE VIEW `hot trips` as (
  select
    `flight number`,
    `departure airport`,
    `arrival airport`,
    `departure date`,
    (`max passengers` - `current passengers`) as `seats available`
  from
    (
      select
        `flights`.flight_number as `flight number`,
        `a1`.name as `departure airport`,
        `a2`.name as `arrival airport`,
        count(`orders`.id) as `current passengers`,
        `flights`.min_passengers as `min passengers`,
        `selected`.capacity as `max passengers`,
        `flights`.departure_date as `departure date`
      from
        `flights`
        join `orders` on `orders`.flight_id = `flights`.id
        join `airport` `a1` on `a1`.id = `flights`.origin_id
        join `airport` `a2` on `a2`.id = `flights`.destination_id
        join (
          select
            `flights`.id as id,
            `plane`.capacity as capacity
          from
            `flights`
            join `plane` on `flights`.plane_id = `plane`.id
        ) as `selected` on `selected`.id = `flights`.id
      group by
        `flights`.flight_number
    ) as t
  where
    `current passengers` < `min passengers`
    and datediff(`departure date`, now()) <= 30
    and datediff(`departure date`, now()) > 0
);