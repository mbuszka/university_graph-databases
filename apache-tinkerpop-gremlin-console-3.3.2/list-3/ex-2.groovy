g.V().has('country', 'PL').
  outE().has('dist', gte(400)).inV().
  has('country', 'DE').
  path().by('code').by('dist')
