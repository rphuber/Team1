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
        .when("/create",{
          templateUrl: "../assets/create.html",
          controller: "tiyCtrl"
        })
        .when("/show", {
          templateUrl: "../assets/show.html",
          controller: "tiyCtrl"
        })
    })

.config(["$httpProvider", function(provider) {
    provider.defaults.headers.common['X-CSRF-Token'] = $('meta[name=csrf-token]').attr('content')
}]);

angular.module("tiyCtrl", []);
angular.module("tiySvc", []);
