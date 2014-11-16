(function() {
  angular.module('createBookModule', []).controller('createBookCtl', [
    '$scope', '$http', function($scope, $http) {
      return $scope.submit = function() {
        var bookDescription, bookISBN, bookId, bookTitle, data, formData;
        formData = $scope.myForm;
        bookId = formData.bookId.$viewValue;
        bookTitle = formData.bookTitle.$viewValue;
        bookDescription = formData.bookDescription.$viewValue;
        bookISBN = formData.bookISBN.$viewValue;
        console.log('formData', formData);
        data = {
          id: bookId,
          bookTitle: bookTitle,
          bookDescription: bookDescription,
          bookISBN: bookISBN
        };
        console.log("angular-data", data);
        return $http.post('createBookValue.json', data);
      };
    }
  ]);

}).call(this);
