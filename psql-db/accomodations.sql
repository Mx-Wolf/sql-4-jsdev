CREATE TABLE IF NOT EXISTS d101."Accomodations" (
    "AccomodationsId" SERIAL PRIMARY KEY,
    "AccomodationName" VARCHAR(100) NOT NULL,
    "Rating" INT,
    "AccomodationTypesId" INT NOT NULL REFERENCES d101."AccomodationTypes"("AccomodationTypesId"),
    "HotelChainsId" INT REFERENCES d101."HotelChains"("HotelChainsId"),
    "CitiesId" INT NOT NULL REFERENCES d101."Cities"("CitiesId"),
    "ContinentsId" INT NOT NULL REFERENCES d101."Continents"("ContinentsId")
);