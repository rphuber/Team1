angular.module("tiyApp")
  .controller('tiyCtrl', function ($route, $rootScope, $scope, tiySvc) {

    $scope.submitTiyer = function(person) {

       var tiyerData = {


        first_name:$scope.firstName,
        last_name:$scope.lastName,

        first_name:$scope.first_name,
        last_name:$scope.last_name,

        github:$scope.github,
        tiy_type:$scope.tiy_type
      };

      tiySvc.submitTiyer(person);

      $scope.submitTiyer = {};

    };


  });


    tiySvc.getTiyers().success(function(data) {

    	$scope.tiyers = data;

    });

  });
