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
INSERT INTO demo."Cities" ("CitiesId", "CityName", "CountriesId") VALUES
(1, 'Istanbul', 1),      -- Turkey
(2, 'Antalya', 1),       -- Turkey
(3, 'Cairo', 2),         -- Egypt
(4, 'Marrakesh', 3),     -- Morocco
(5, 'Barcelona', 4),     -- Spain
(6, 'Rome', 5),          -- Italy
(7, 'Athens', 6),        -- Greece
(8, 'Alexandria', 2),    -- Egypt
(9, 'Casablanca', 3),    -- Morocco
(10, 'Naples', 5),       -- Italy
(11, 'Santorini', 6);    -- Greece

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



-- Accomodations
INSERT INTO demo."Accomodations" (
    "AccomodationsId", "AccomodationName", "Rating", "AccomodationTypesId", "HotelChainsId", "CitiesId", "ContinentsId"
) VALUES
(1, 'Istanbul Grand Hotel', 5, 1, 1, 1, 1),         -- Istanbul, Turkey, Europe
(2, 'Istanbul Riverside Inn', 4, 4, NULL, 1, 2),    -- Istanbul, Turkey, Asia
(3, 'Antalya Beach Resort', 4, 2, 2, 2, 2),         -- Antalya, Turkey, Asia
(4, 'Cairo Family House', 3, 3, NULL, 3, 3),        -- Cairo, Egypt, Africa
(5, 'Alexandria Boutique', 4, 4, 3, 8, 3),          -- Alexandria, Egypt, Africa
(6, 'Marrakesh Oasis', 5, 2, 1, 4, 3),              -- Marrakesh, Morocco, Africa
(7, 'Casablanca Central Hotel', 4, 1, 2, 9, 3),     -- Casablanca, Morocco, Africa
(8, 'Barcelona Seaside', 5, 2, 1, 5, 1),            -- Barcelona, Spain, Europe
(9, 'Rome Heritage Inn', 4, 4, NULL, 6, 1),         -- Rome, Italy, Europe
(10, 'Naples Bay Resort', 5, 2, 2, 10, 1),          -- Naples, Italy, Europe
(11, 'Athens Acropolis View', 4, 1, 3, 7, 1),       -- Athens, Greece, Europe
(12, 'Santorini Sunset Villas', 5, 2, NULL, 11, 1); -- Santorini, Greece, Europe