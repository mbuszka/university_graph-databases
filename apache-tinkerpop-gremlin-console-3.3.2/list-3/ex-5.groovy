g.V().has('code', 'WRO').
  repeat(out().has('country', 'UK')).times(4).emit().dedup().
  path().by('code')
