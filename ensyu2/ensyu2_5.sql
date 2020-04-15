#世界で話されている言語（非公用語）の多いもの順ランキングデータ。 (IsOfficial = "F")
use world;
select country.Continent as cont, countrylanguage.language as lang, country.code ,country.name,country.Population,countrylanguage.Percentage,  
sum(0.000000001*countrylanguage.Percentage * country.Population) as num_oku
from countrylanguage 
right outer join country on  countrylanguage.countryCode = country.code 
where countrylanguage.IsOfficial="F"#ensyu2-5
group by lang,cont
#order by cont desc; #ensyu2-3
order by num_oku desc;#ensyu2-4,2-5

