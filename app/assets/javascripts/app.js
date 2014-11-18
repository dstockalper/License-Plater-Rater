(function(){

	var app = angular.module('myApp',["ngResource"]);

	// TabController controlls the three tab click functions
	app.controller("TabController", function(){
		this.tab = 3;

		this.setTab = function(value){
		    this.tab = value;
		};

		this.isSet = function(value){
		    return this.tab === value;
		};

	});



	// Use $resource (high level $http) to query db for all reviews
	app.factory("ngUser", ["$resource", function($resource){
    	// the argument inside $resource indicates the routing: in this case the index action of reviews controller...:id gets ignored
        return $resource("/users/:id", {id: "@id"});
    }]);

    app.factory("ngReview", ["$resource", function($resource){
    	// the argument inside $resource indicates the routing: in this case the index action of reviews controller...:id gets ignored
        return $resource("/reviews");
    }]);

	app.controller("myController", ["ngUser", "ngReview", function(ngUser, ngReview){

		this.reviews = ngReview.query();
		console.log("current user reviews: ");
		console.log(this.reviews);

		this.test = [{name: "doug"}, {name: "charley"}]


	}]);


})();


