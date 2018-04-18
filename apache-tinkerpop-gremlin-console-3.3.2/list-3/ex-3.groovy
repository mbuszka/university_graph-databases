g.V().
  has('code', 'MUC').in().
  has('country', 'PL').as('f').
  outE().as('e').inV().
  has('country', 'DE').as('t').
  select('f', 'e', 't').by('code').by('dist')
