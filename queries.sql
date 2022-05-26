-- Drop Tables if Existing
DROP TABLE if exists house_data1;
DROP TABLE if exists house_data2;

-- Create tables for raw data to be loaded into
CREATE TABLE house_data1 (
id VARCHAR PRIMARY KEY,
bedrooms INT,
bathrooms INT,
sqft_living INT,
floors INT,
waterfront INT,
condition INT,
grade INT    
);

CREATE TABLE house_data2 (
id VARCHAR PRIMARY KEY,
sqft_basement INT,
yr_built INT,
zipcode INT
);

SELECT * FROM house_data1;
SELECT * FROM house_data2;

-- Joins tables
SELECT house_data1.id, house_data1.bedrooms, house_data1.bathrooms, house_data1.sqft_living, house_data1.floors, house_data1.waterfront,  house_data1.condition, house_data1.grade, house_data2.sqft_basement, house_data2.yr_built, house_data2.zipcode
FROM house_data1
JOIN house_data2
ON house_data1.id = house_data2.id;
