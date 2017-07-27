'use strict';
angular.module('myApp').factory('CreateApplicationService', ['$http', '$q', function ($http, $q) {
    var REST_SERVICE_URL = 'http://localhost:1818/createapplication/';
    var factory = {
        createApplication: createApplication
    }

    function createApplication(leaveapply) {
        console.log('in the service');
        var deferred = $q.defer();
        $http.post(REST_SERVICE_URL, leaveapply)
            .then(
                function (response) {
                    deferred.resolve(response.data)
                },
                function (errResponse) {
                    console.error('Error while creating Application');
                    deferred.reject(errResponse);
                }
            );
        return deferred.promise();

    }

}])