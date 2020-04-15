#ensyu2-3 言語、大陸ごとの言語人口（ただし、各言語に全大陸のデータも載せる）。
use world;
select country.Continent as cont, countrylanguage.language as lang, country.code ,country.name,country.Population,countrylanguage.Percentage,  
sum(0.000000001*countrylanguage.Percentage * country.Population) as num_oku
from countrylanguage 
right outer join country on  countrylanguage.countryCode = country.code 
group by lang,cont
order by Continent desc;
