match
  (t:User{screen_name: "realdonaldtrump"})
, (h:User{screen_name: "hillaryclinton"})
, p = shortestPath((t)-[*]-(h))
return
  p
