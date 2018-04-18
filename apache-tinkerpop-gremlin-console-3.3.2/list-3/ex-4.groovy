g.V().has('code', 'WRO').
  repeat(out()).times(4).emit().
  has('country', 'UK').path().by('code')
