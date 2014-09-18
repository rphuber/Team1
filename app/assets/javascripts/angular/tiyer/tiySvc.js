angular.module("tiyApp")
  .factory('tiySvc', function ($route, $rootScope, $log, $http) {
      var tiyers = "/tiyer.json";

      var getTiyers = function(){
        return $http.get(tiyers);
      };

      var submitTiyer = function(tiyer) {

        $http.post(tiyers, tiyer).then(function(response) {
          $log.info("user added");
      });

    };

      return{
        getTiyers : getTiyers,
        submitTiyer : submitTiyer


      }
  });
