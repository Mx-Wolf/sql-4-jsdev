select 
  co."CountryName",
  ci."CitiesId",
  ci."CityName"
from 
  d101."Cities" ci
  inner join d101."Countries"  co
    on ci."CountriesId" = co."CountriesId"
order by ci."CitiesId"