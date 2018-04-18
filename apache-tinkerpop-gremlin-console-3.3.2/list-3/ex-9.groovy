g.V().has('icao').
  filter({
    ['E', 'B', 'L'].contains(it.get().value('icao')[0])
  }).toList().collect({ v ->
    [ code: v.value('code')
    , city: v.value('city')
    , conns: g.V(v).out().count().next()
    ]
  }).sort { 
    it.conns
  }.reverse().take(10)
