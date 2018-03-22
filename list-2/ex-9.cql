match (troll:Troll)-[:POSTED]->(tweet:Tweet)-[:HAS_TAG]->(tag:Hashtag)
where troll.partition is not null
with troll.partition as part, tag.tag as ttag, count(distinct tweet) as cnt
return part, max({tag: ttag, cnt: cnt}).tag // works becouse records are compared alphabetically


// match (troll:Troll)-[:POSTED]->(tweet:Tweet)-[:HAS_TAG]->(tag:Hashtag)
// where troll.partition is not null
// with troll.partition as part, tag.tag as ttag, count(distinct tweet) as cnt
//   order by cnt desc
// with part, collect({tag: ttag, cnt: cnt}) as list
// return part, list[0].tag as tag
