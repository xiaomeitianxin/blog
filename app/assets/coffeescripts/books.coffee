angular.module 'createBookModule',[]
.controller 'createBookCtl',['$scope','$http',($scope, $http) ->
  $scope.submit = () ->
    formData = $scope.myForm
    bookId = formData.bookId.$viewValue
    bookTitle = formData.bookTitle.$viewValue
    bookDescription = formData.bookDescription.$viewValue
    bookISBN = formData.bookISBN.$viewValue
    console.log 'formData',formData
#    csrf-param = $('meta[name=csrf-param]').attr('content')
#    csrf-token = $('meta[name=csrf-token]').attr('content')

    data = {
      id: bookId
      bookTitle: bookTitle
      bookDescription: bookDescription
      bookISBN: bookISBN
    }
    console.log "angular-data",data

    $http.post('createBookValue.json', data)

]