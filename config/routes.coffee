exports.routes = (map)->
#  map.resources 'posts'
#
#  # Generic routes. Add all your routes below this line
#  # feel free to remove generic routes
#  map.all ':controller/:action'
#  map.all ':controller/:action/:id'
  map.resource 'logs'
  map.get 'login', 'login#logina'
#  map.get 'posts', 'posts#new'
  map.get 'man', 'man#init'
