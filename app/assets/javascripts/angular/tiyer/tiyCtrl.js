angular.module("tiyApp")

  .controller('tiyCtrl', function ($route, $rootScope, $location, $routeParams, $scope, tiySvc) {

    $scope.submitTiyer = function(person) {

       var tiyerData = {


        first_name:$scope.first_name,
        last_name:$scope.last_name,
        github:$scope.github,
        tiy_type:$scope.tiy_type
      };

      tiySvc.submitTiyer(person);


      $location.path('/');

      $location.path("/")
    };

    tiySvc.getTiyers().success(function(data) {

     $scope.tiyers = data;

    });

  });
