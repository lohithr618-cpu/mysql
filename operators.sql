use world;
select population from country;

select name,continent,population+1000 as added_pop,population
from country;

select name,continent,population-1000 as sub_pop,population
from country;

select name,continent,population*2 as mul_population,population
from country;

select name,continent,population/2 as did_population,population
from country;

select name,population+1000 as added_population,population  from  country where name ='India';

select name,population 
from country
where population<100000;

set @lohith=100;
select @lohith+1000;

select name,continent,population
from country
where continent='Asia' and population>1000000000;

select * from country;

select name,population,region
from country
where continent='Asia' or region='Hindhu';

select name,continent
from country
where not continent='Asia';

select name,continent,population
from country 
where population between 1000000 and 2000000;

select name,continent,population
from country
where continent='Asia'and  population not between 2000000 and 1000000;

select name,continent,population
from country
where continent in ('asia','africa','europe');

select name,code,population
from country
where code not in ('fre','deu','esp');

select name,headofstate from country where headofstate is null;

select name from country where name like'a%';

select name from country where name like '%land';

select name from country where name like '___e';

select name from country where name like '_e%';

select name from country where name like '_____';

