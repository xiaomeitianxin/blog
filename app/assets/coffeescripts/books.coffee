angular.module 'createBookModule',[]
.controller 'createBookCtl',['$scope',($scope) ->
  $scope.submit = () ->
    formData = $scope.myForm
    console.log 'formData', formData
]