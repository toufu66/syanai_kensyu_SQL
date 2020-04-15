#ensyu2-2 各大陸ごとの人口の一覧データ。
use world;
select continent, sum(population) as Pop from country group by continent order by Pop desc;