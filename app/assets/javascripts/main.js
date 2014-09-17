angular.module("project", ["project.controllers", "ngRoute"])
	.config(function($routeProvider){
		$routeProvider
		.when ("/",
		{
			templateUrl: "../assets/home.html",
			controller: "WelcomeCtrl"
		})
	});

	angular.module("angularBlog.controllers", []);