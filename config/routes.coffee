exports.routes = (map)->
#  map.resources 'books'

#  # Generic routes. Add all your routes below this line
#  # feel free to remove generic routes

  map.all ':controller/:action'
  map.all ':controller/:action/:id'

  map.get 'login', 'login#logina'
  map.get 'man', 'man#init'

  map.get 'books', 'books#createBooks'