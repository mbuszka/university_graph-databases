match (a:Troll)-[:POSTED]->(ta)-[:RETWEETED]->(tb)<-[:POSTED]-(b:Troll)
merge (a)-[:CITES]->(b)
