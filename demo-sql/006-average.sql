select 
  c."ContinentName",
  AVG(a."Rating")
from 
  d101."Continents" c
  inner join d101."Accomodations" a on a."ContinentsId" = c."ContinentsId"
  group by c."ContinentName";