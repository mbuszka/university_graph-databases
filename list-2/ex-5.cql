match (troll:Troll)-[:POSTED]->(tweet:Tweet)
where
  tweet.created_str <> ""
  and toLower(troll.location) contains "us"
  and not toLower(troll.location) contains "uss"
return 
  (apoc.date.fields(tweet.created_str).hours + 3) % 24 as hours
, count(tweet) as cnt order by cnt desc
