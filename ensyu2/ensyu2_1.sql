#ensyu 2-1 都市名、都市人口、国名、大陸の一覧データ。
use world;
select city.Name,city.population, country.Name, country.continent from city inner join country on city.Countrycode=country.code;
