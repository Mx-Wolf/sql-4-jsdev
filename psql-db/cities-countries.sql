CREATE TABLE IF NOT EXISTS demo."CitiesCountries" (
    "CitiesCountriesId" SERIAL PRIMARY KEY,
    "CitiesId" INT NOT NULL,
    "CountriesId" INT NOT NULL,
    UNIQUE ("CitiesId", "CountriesId"),
    FOREIGN KEY ("CitiesId") REFERENCES demo."Cities"("CitiesId"),
    FOREIGN KEY ("CountriesId") REFERENCES demo."Countries"("CountriesId")
);