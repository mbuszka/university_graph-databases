g.V().has('country', 'UK').values('code').toList() - g.V().has('code', 'WRO').
  repeat(out()).times(4).emit().
  has('country', 'UK').
  values('code').toList()
