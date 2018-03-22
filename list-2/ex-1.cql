match (t: Troll)-[:POSTED]->(tw: Tweet)-[:CONTAINS_ENTITY]->(l: Location)
return l.name, count(distinct t) as c
order by c desc
limit 10
