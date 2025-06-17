--Pivot the Occupation column in OCCUPATIONS so that each Name is sorted alphabetically and displayed underneath its corresponding Occupation. The output should consist of four columns (Doctor, Professor, Singer, and Actor) in that specific order, with their respective names listed alphabetically under each column.

with D as (
select name, rownum as R from (select name from occupations where occupation = 'Doctor' order by name)
),
P as (
select name, rownum as R from (select name from occupations where occupation = 'Professor' order by name)
),
S as (
select name, rownum as R from (select name from occupations where occupation = 'Singer' order by name)
),
A as (
select name, rownum as R from (select name from occupations where occupation = 'Actor' order by name)
)
select D.name, P.name, S.name, A.name 
from
A full join D on A.R = D.R
full join P on A.R = P.R
full join S on A.R = S.R;
