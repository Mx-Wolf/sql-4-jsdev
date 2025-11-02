select
  c."ContinentName",
  count(1) as "Qty"
from 
  d101."Accomodations" a
  inner join d101."Continents" c
    on a."ContinentsId" = c."ContinentsId"
group by 
  c."ContinentName"