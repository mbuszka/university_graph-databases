g.V().
  has('country', 'PL').toList().
  collect({ v -> 
    [ code: v.value('code')
    , out: g.V(v).out().count().next()
    , in: g.V(v).in().count().next()
    ]}).sort { 
      it.in
    }
