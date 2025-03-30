--Query the list of CITY names from STATION that do not start with vowels and do not end with vowels. Your result cannot contain duplicates.

select city from station
where city NOT in 
(select city from station where city like ('A%') or 
city like ('E%') or 
city like ('I%') or 
city like ('O%') or 
city like ('U%') or 
city like ('%a') or 
city like ('%e') or 
city like ('%i') or 
city like ('%o') or 
city like ('%u'))
group by city;
