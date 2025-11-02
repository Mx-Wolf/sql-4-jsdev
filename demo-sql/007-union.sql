select 
  c."ContinentsId" as id,
  c."ContinentName" as name
from d101."Continents" c
union
select 
  h."HotelChainsId" as id,
  h."HotelChainName" as name
from d101."HotelChains" h