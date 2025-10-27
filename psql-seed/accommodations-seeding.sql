-- Continents
INSERT INTO demo."Continents" ("ContinentsId", "ContinentName") VALUES
(1, 'Europe'),
(2, 'Asia'),
(3, 'Africa');

-- Countries
INSERT INTO demo."Countries" ("CountriesId", "CountryName") VALUES
(1, 'Turkey'),
(2, 'Egypt'),
(3, 'Morocco'),
(4, 'Spain'),
(5, 'Italy'),
(6, 'Greece');

-- Cities
INSERT INTO demo."Cities" ("CitiesId", "CityName") VALUES
(1, 'Istanbul'),
(2, 'Antalya'),
(3, 'Cairo'),
(4, 'Marrakesh'),
(5, 'Barcelona'),
(6, 'Rome'),
(7, 'Athens'),
(8, 'Alexandria'),
(9, 'Casablanca'),
(10, 'Naples'),
(11, 'Santorini');

-- AccomodationTypes
INSERT INTO demo."AccomodationTypes" ("AccomodationTypesId", "AccomodationTypeName") VALUES
(1, 'Hotel'),
(2, 'Resort'),
(3, 'Family House'),
(4, 'Boutique Hotel');

-- HotelChains
INSERT INTO demo."HotelChains" ("HotelChainsId", "HotelChainName") VALUES
(1, 'MedSun Resorts'),
(2, 'BlueWave Hotels'),
(3, 'Atlas Hospitality');

-- CitiesCountries (city-country pairs)
-- Istanbul, Turkey (Europe)
INSERT INTO demo."CitiesCountries" ("CitiesCountriesId", "CitiesId", "CountriesId") VALUES
(1, 1, 1);  -- Istanbul, Turkey (European side)
-- Other city-country pairs
INSERT INTO demo."CitiesCountries" ("CitiesCountriesId", "CitiesId", "CountriesId") VALUES
(3, 2, 1),   -- Antalya, Turkey
(4, 3, 2),   -- Cairo, Egypt
(5, 8, 2),   -- Alexandria, Egypt
(6, 4, 3),   -- Marrakesh, Morocco
(7, 9, 3),   -- Casablanca, Morocco
(8, 5, 4),   -- Barcelona, Spain
(9, 6, 5),   -- Rome, Italy
(10, 10, 5), -- Naples, Italy
(11, 7, 6),  -- Athens, Greece
(12, 11, 6); -- Santorini, Greece

-- Accomodations
INSERT INTO demo."Accomodations" (
    "AccomodationsId", "AccomodationName", "Rating", "AccomodationTypesId", "HotelChainsId", "CountriesId", "CitiesCountriesId"
) VALUES
(1, 'Istanbul Grand Hotel (European Side)', 5, 1, 1, 1, 1),   -- Istanbul, Turkey, MedSun Resorts, Europe
(2, 'Istanbul Riverside Inn (Asian Side)', 4, 4, NULL, 1, 2), -- Istanbul, Turkey, Boutique, Asia
(3, 'Antalya Beach Resort', 4, 2, 2, 1, 3),                   -- Antalya, Turkey, BlueWave Hotels
(4, 'Cairo Family House', 3, 3, NULL, 2, 4),                  -- Cairo, Egypt, Family House
(5, 'Alexandria Boutique', 4, 4, 3, 2, 5),                    -- Alexandria, Egypt, Atlas Hospitality
(6, 'Marrakesh Oasis', 5, 2, 1, 3, 6),                        -- Marrakesh, Morocco, MedSun Resorts
(7, 'Casablanca Central Hotel', 4, 1, 2, 3, 7),               -- Casablanca, Morocco, BlueWave Hotels
(8, 'Barcelona Seaside', 5, 2, 1, 4, 8),                      -- Barcelona, Spain, MedSun Resorts
(9, 'Rome Heritage Inn', 4, 4, NULL, 5, 9),                   -- Rome, Italy, Boutique, no chain
(10, 'Naples Bay Resort', 5, 2, 2, 5, 10),                    -- Naples, Italy, BlueWave Hotels
(11, 'Athens Acropolis View', 4, 1, 3, 6, 11),                -- Athens, Greece, Atlas Hospitality
(12, 'Santorini Sunset Villas', 5, 2, NULL, 6, 12);           -- Santorini, Greece, Resort, no chain