angular.module("tiyApp", [
  "ngRoute",
  "tiyCtrl",
  "tiySvc"])
    .config(function($routeProvider){
      $routeProvider
        .when("/", {
          templateUrl: "../assets/home.html",
          controller: "tiyCtrl"
        })
    });


angular.module("tiyCtrl", []);
angular.module("tiySvc", []);