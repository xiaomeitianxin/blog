# Example of model definition:
#
#define 'User', ->
#  property 'email', String, index: true
#  property 'password', String
#  property 'activated', Boolean, default: false
#

#Post = describe 'Post', ->
#    property 'title', String
#    property 'content', String
#    set 'restPath', pathTo.posts

Book = describe 'Book', ->
    property 'id', String
    property 'title', String
    property 'description', String
    property 'ISBN', String
    property 'createdAt', Date
    property 'modifiedAt', Date
    set 'restPath', pathTo.books

