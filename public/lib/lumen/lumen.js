// The [] object after our app name can accept a list of module DEPENDANCIES. In our case, we linked to the NgMessages module js file in our html file, and are now including it in our MyApp application as a dependancy. 
var lumenApp = angular.module('lumenApp', []);

lumenApp.controller('lumenController', ["$scope", "$http", "$timeout", "$log", function($scope, $http, $timeout, $log){

	$scope.testVar = "Lumen Home Page";

	$timeout(function(){
		$scope.testVar = "Lumen Home Page - Changed by Angular";
	}, 5000);

	//$scope.formattedName = $filter('uppercase')($scope.name);
	
	// Function to make handle lowercase
	$scope.lowerCaseHandle = function(){
		return $filter('lowercase')($scope.twitterHandle);
	}

	// Array of objects, to test repeating over them
	$scope.ruleSet = [

		{ ruleName: "Must be at least 5 cahracters" },
		{ ruleName: "Must be super cool!" },
		{ ruleName: "Must be AWESOME!" }

	];

	/*$timeout(function(){
		$scope.ruleSet = null;
	}, 5000);*/

	// Function to handle retrieval of FB likes
	$scope.getFbLikes = function(){
		$log.log("Initializing Facebook Connection for Likes...");
		$http.get('http://graph.facebook.com/246226188858269').
		success(function(data, status, headers, config){
			$log.log("Successfully retrieved likes");
			$scope.fbLikeCount = data.likes;
		}).
		error(function(data, status, headers, config){
			$log.error("Could not retrieve Facebook likes");
		});
	}

	/*$scope.$watch('twitterHandle', function(newValue, oldValue){
		console.info(oldValue);
		console.log(newValue);
	});*/

	// IT IS SO SO SO IMPORTANT TO MAKE SURE THAT YOU USE TIMEOUTS WITHING THE $timeout SERVICE.
	// IF you do NOT, it will not affect DOM - Modal bindings
	// OR wrap it in a $scope.$apply() function to tell Angular that what we're about to do APPLIES to the binding within the scope of the app

	/*$timeout(function(){
		$scope.twitterHandle = "MooMoo";
		$log.log($scope.twitterHandle);
	}, 3000);*/

	//$location.url("testState=true");
	//$log.log($location);


}]);

// We simple assigned a function to a variable
var searchPeople = function(firstName, lastName, height, age, occupation){
	return "Jane Doe";
}

// Angular has a core method for annotating functions:
// This awesome function gets an object of strings showing what parameters the function expects. 
// This is exactly how Angular knows what to inject in the parameters places

console.log(angular.injector().annotate(searchPeople));

