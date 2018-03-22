match (a:Troll)
where a.partition is not null
return a.partition, count(a) as cnt
order by cnt desc
