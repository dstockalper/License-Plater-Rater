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

		var msg = new SpeechSynthesisUtterance();
		msg.text="Enter the license plate number and review another driver.";
		speechSynthesis.speak(msg);


	}]);

	app.controller("geoController", function(){
		function showlocation(){
			navigator.geolocation.watchPosition(callback);
		}
		function callback(position){
			document.getElementById('latitude').innerHTML=position.coords.latitude;
			document.getElementById('longitude').innerHTML=position.coords.longitude;
		}
	});


})();


