 angular.module('fisite',[])
  .controller('EmailSubscriptionCtrl', ['$scope', '$http', function($scope, $http ){
 			  $scope.subscribe = function() {
          	  $http({
                    method:'POST',
                    url:'/fi/subscribe',
                    data:JSON.stringify({
                    	"email" : $scope.email,              	
                    }),
                    xhrFields: {
                        withCredentials: true
                    },
                    headers:{'Content-Type':'application/json'}
                    }).then(function successCallback(response) {
                        $scope.respMsg = "Subscribed successfully.";
                      }, function errorCallback(response) {
                        $scope.respMsg = "Try again, request processing failed.";
                  });
    	   };

        $scope.clearResponseMsg = function() {
            $scope.respMsg = "";
        }

       $scope.submitContactInfo = function() {
              $http({
                    method:'POST',
                    url:'/fi/subscribe',
                    data:JSON.stringify({
                      "email" : $scope.email,               
                    }),
                    xhrFields: {
                        withCredentials: true
                    },
                    headers:{'Content-Type':'application/json'}
                    }).then(function successCallback(response) {
                        $scope.respMsg = "Subscribed successfully.";
                      }, function errorCallback(response) {
                        $scope.respMsg = "Try again, request processing failed.";
                  });
         };


		}])

   .controller('ContactInfoCtrl', ['$scope', '$http', function($scope, $http ){
    $scope.submitContactInfo = function() {
              $http({
                    method:'POST',
                    url:'/fi/contactForm',
                    data:JSON.stringify({
                      "name": $scope.name,
                      "email" : $scope.email, 
                      "textMsg" : $scope.textMsg            
                    }),
                    xhrFields: {
                        withCredentials: true
                    },
                    headers:{'Content-Type':'application/json'}
                    }).then(function successCallback(response) {
                        $scope.contactInfoResp = "Message submitted successfully.";
                      }, function errorCallback(response) {
                        $scope.contactInfoResp = "Try again, request processing failed.";
                  });
         };

     $scope.clearContactInfoResponseMsg = function() {
          $scope.contactInfoResp = "";
      }  

    }]);