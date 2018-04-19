g.V().
  has('country', 'PL').
  order().by('code').
  project('code', 'countries').
  by('code').
  by(__.out().values('country').dedup().count())
