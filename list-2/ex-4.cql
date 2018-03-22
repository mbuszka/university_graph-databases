match (t:Tweet) where t.created_str <> ""
return count(t) as cnt, apoc.date.fields(t.created_str).months as month
order by month asc
