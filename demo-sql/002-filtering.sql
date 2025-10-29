select
  *
from 
  "d101"."Continents" as c
where 
  c."ContinentsId" % 2 = 0