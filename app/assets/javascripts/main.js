
@team1.config(['$routeProvider', ($routeProvider) ->
  $routeProvider.
    otherwise({
      templateUrl: '../views/welcome/index.html.erb',
      controller: 'WelcomeCtrl'
    }) 
])