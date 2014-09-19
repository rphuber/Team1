angular.module("tiyApp")
  .factory('tiySvc', function ($route, $rootScope, $log, $http) {
      var tiyers = "/tiyers";

      var getTiyers = function(){
        return $http.get(tiyers);
      };

      var submitTiyer = function(tiyer) {

        $http.post(tiyers, tiyer).then(function(response) {
          $log.info("user added");
      });

    };

    var getTiyer = function(id) {
        return $http.get(tiyers + "/" + id);
      };

      

      return{
        getTiyers : getTiyers,
        submitTiyer : submitTiyer,
        getTiyer : getTiyer


      }
  });
