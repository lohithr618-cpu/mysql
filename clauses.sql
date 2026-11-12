use world;
#where
show tables;
select * from city;
select * from country;
select * from countrylanguage;

select name,continent
from country
where continent='asia';

select name,continent,region
from country
where region='western  euroupe';

select name,continent,region,population
from country 
where population>10000;

#order by
select name,population
from country
order by population desc;

#distinct 
select distinct continent from country;

select name from city
order by name asc;

select distinct language from countrylanguage;

#groupby
select continent,count(*) as no_of_countries
from country
group by continent;

#having
select name,sum(population)
from country
group by name
having sum(population)> 1000;

select continent,count(*) as no_of_countries
from country
group by continent
having no_of_countries>30;
