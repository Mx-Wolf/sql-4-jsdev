CREATE TABLE IF NOT EXISTS demo."Cities" (
    "CitiesId" SERIAL PRIMARY KEY,
    "CityName" VARCHAR(100) NOT NULL,
    "CountriesId" INT NOT NULL REFERENCES demo."Countries"("CountriesId")
);