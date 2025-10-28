CREATE TABLE IF NOT EXISTS d101."Cities" (
    "CitiesId" SERIAL PRIMARY KEY,
    "CityName" VARCHAR(100) NOT NULL,
    "CountriesId" INT NOT NULL REFERENCES d101."Countries"("CountriesId")
);