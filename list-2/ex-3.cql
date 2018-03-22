match (u: User)-[:POSTED]->(tw: Tweet)-[:MENTIONS]->(t:Troll)
return t.screen_name, count(distinct u) as c
order by c desc
limit 10
