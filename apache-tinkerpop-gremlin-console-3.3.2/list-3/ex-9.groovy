g.V().has('icao').
  filter({
    ['E', 'B', 'L'].contains(it.get().value('icao')[0])
  }).
  order().by(__.out().count(), decr).
  project('code', 'city', 'conns').
  by('code').
  by('city').
  by(__.out().count()).
  limit(10)
