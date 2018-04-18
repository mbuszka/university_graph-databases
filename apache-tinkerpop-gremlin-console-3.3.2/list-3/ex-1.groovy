g.V().has('country', 'PL').outE().inV().has('country', 'DE').path().by('code').by('dist')
