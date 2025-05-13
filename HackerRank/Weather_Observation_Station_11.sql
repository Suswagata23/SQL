-- Query the list of CITY names from STATION that either do not start with vowels or do not end with vowels. Your result cannot contain duplicates.

select distinct city from station
where city not in 
(select city from station 
 where city like 'A%a'
 or city like 'A%e'
 or city like 'A%i'
 or city like 'A%o'
 or city like 'A%u'
or city like 'E%a'
 or city like 'E%e'
 or city like 'E%i'
 or city like 'E%o'
 or city like 'E%u'
or city like 'I%a'
 or city like 'I%e'
 or city like 'I%i'
 or city like 'I%o'
 or city like 'I%u'
or city like 'O%a'
 or city like 'O%e'
 or city like 'O%i'
 or city like 'O%o'
 or city like 'O%u'
or city like 'U%a'
 or city like 'U%e'
 or city like 'U%i'
 or city like 'U%o'
 or city like 'U%u')
order by city;
