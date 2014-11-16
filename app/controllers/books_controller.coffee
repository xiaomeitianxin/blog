load 'application'

#before 'load book', ->
#  Book.find params.id, (err, book) =>
#    if err || !book
#      if !err && !book && params.format == 'json'
#        return send code: 404, error: 'Not found'
#      redirect pathTo.books
#    else
#      @book = book
#      next()
#, only: ['show', 'edit', 'update', 'destroy']

#action 'new', ->
#  @book = new Book
#  @title = 'New book'
#  render()
#
#action 'create', ->
#  Book.create body.Book, (err, book) =>
#    respondTo (format) =>
#      format.json ->
#        if err
#          send code: 500, error: book.errors || err
#        else
#          send code: 200, data: book.toObject()
#      format.html =>
#        if err
#          flash 'error', 'Book can not be created'
#          @book = book
#          @title = 'New book'
#          render 'new'
#        else
#          flash 'info', 'Book created'
#          redirect pathTo.books
#
#action 'index', ->
#  Book.all (err, books) =>
#    @books = books
#    @title = 'Book index'
#    respondTo (format) ->
#      format.json ->
#        send code: 200, data: books
#      format.html ->
#        render books: books
#
#action 'show', ->
#  @title = 'Book show'
#  respondTo (format) =>
#    format.json =>
#      send code: 200, data: @book
#    format.html ->
#      render()
#
#action 'edit', ->
#  @title = 'Book edit'
#  respondTo (format) =>
#    format.json =>
#      send code: 200, data: @book
#    format.html ->
#      render()
#
#action 'update', ->
#  @book.updateAttributes body.Book, (err) =>
#    respondTo (format) =>
#      format.json =>
#        if err
#          send code: 500, error: @book.errors || err
#        else
#          send code: 200, data: @book
#      format.html =>
#        if !err
#          flash 'info', 'Book updated'
#          redirect path_to.book(@book)
#        else
#          flash 'error', 'Book can not be updated'
#          @title = 'Edit book details'
#          render 'edit'
#
#action 'destroy', ->
#  @book.destroy (error) ->
#    respondTo (format) ->
#      format.json ->
#        if error
#          send code: 500, error: error
#        else
#          send code: 200
#      format.html ->
#        if error
#          flash 'error', 'Can not destroy book'
#        else
#          flash 'info', 'Book successfully removed'
#        send "'" + path_to.books + "'"

action 'createBooks', ->
  render()

action 'createBookValue', ->
  console.log params
  Data = req.body
#  Data =
#    id: '29'
#    title: 'beauty and beast'
#    description: 'nice'
#    ISBN: '124354565'

#  console.log 'Data',Data
  Book.create Data,(error,data) ->
    respondTo (format) ->
        format.json ->
          if error
            send code: 500, error: error
          else
            send code: 200
#        format.html =>
#          redirect 'logina'
