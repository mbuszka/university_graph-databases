g.V().
  has('country', 'PL').
  order().by(__.in().count(), decr).
  project('code', 'out', 'in').
  by('code').
  by(__.out().count()).
  by(__.in().count())
