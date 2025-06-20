--Query the sum of Northern Latitudes (LAT_N) from STATION having values greater than 38.7880 and less than 137.2345. Truncate your answer to  decimal places.

select round(sum(lat_n),4) from station
where lat_n between 38.7880 and 137.2345;
