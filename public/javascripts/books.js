(function() {
  angular.module('createBookModule', []).controller('createBookCtl', [
    '$scope', function($scope) {
      return $scope.submit = function() {
        var formData;
        formData = $scope.myForm;
        return console.log('formData', formData);
      };
    }
  ]);

}).call(this);
