match (tw: Tweet) -[:MENTIONS]->(t:Troll)
return t.screen_name, count(distinct tw) as c
order by c desc
limit 10
