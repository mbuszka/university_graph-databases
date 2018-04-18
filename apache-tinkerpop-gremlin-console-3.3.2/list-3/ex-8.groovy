g.V().
  has('country', 'PL').toList().
  collect({ v ->
    [ code: v.value('code')
    , countries: g.V(v).out().values('country').dedup().sort().toList()
    ]
  }).sort { 
    it.code
  }
