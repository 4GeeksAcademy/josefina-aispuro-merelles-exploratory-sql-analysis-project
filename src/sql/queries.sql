SELECT * FROM regions;
SELECT * FROM species;
SELECT * FROM climate;
SELECT * FROM observations;


-- MISSION 1
-- Your query here;
SELECT * FROM observations LIMIT 10;

-- MISSION 2
-- Your query here;
SELECT DISTINCT region_id FROM observations;

-- MISSION 3
-- Your query here;
SELECT COUNT(DISTINCT species_id) FROM observations;

-- MISSION 4
-- Your query here;
SELECT COUNT(region_id) FROM observations WHERE region_id = 2;

-- MISSION 5
-- Your query here;
SELECT COUNT(*) FROM observations WHERE observation_date = "1998-08-08";

-- MISSION 6
-- Your query here;
SELECT COUNT(region_id) AS total_observations, region_id FROM observations 
GROUP BY region_id 
ORDER BY COUNT(region_id) DESC 
LIMIT 1;

-- MISSION 7
-- Your query here;
SELECT * FROM observations GROUP BY species_id ORDER BY COUNT(species_id) DESC;

-- MISSION 8
-- Your query here;
SELECT * FROM observations GROUP BY species_id HAVING COUNT(*) < 5;

-- MISSION 9
-- Your query here;
SELECT observer, COUNT(*) FROM observations GROUP BY observer ORDER BY COUNT(*) DESC;

-- MISSION 10
-- Your query here;
SELECT regions.name FROM observations 
JOIN regions ON observations.region_id = regions.id;

-- MISSION 11
-- Your query here;
SELECT species.scientific_name FROM observations 
JOIN species ON observations.species_id = species.id;

-- MISSION 12
SELECT regions.name AS region, species.scientific_name, COUNT(*) AS total 
FROM observations
INNER JOIN species ON observations.species_id = species.id
INNER JOIN regions ON observations.region_id = regions.id
GROUP BY region, species.scientific_name
ORDER BY region, total DESC;