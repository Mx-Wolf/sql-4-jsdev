CREATE TABLE IF NOT EXISTS demo."Accomodations" (
    "AccomodationsId" SERIAL PRIMARY KEY,
    "AccomodationName" VARCHAR(100) NOT NULL,
    "Rating" INT,
    "AccomodationTypesId" INT NOT NULL REFERENCES demo."AccomodationTypes"("AccomodationTypesId"),
    "HotelChainsId" INT REFERENCES demo."HotelChains"("HotelChainsId"),
    "CitiesId" INT NOT NULL REFERENCES demo."Cities"("CitiesId"),
    "ContinentsId" INT NOT NULL REFERENCES demo."Continents"("ContinentsId")
);