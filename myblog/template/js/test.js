var app = angular.module( 'test', [] )

app.controller( 'Page', function( $scope, $http ){
    $scope.name = 'Page';
    $scope.Page = {}
    $scope.Page.clickFunc = function(){
        console.log( 'clickFunc' );
        $http
            .get('http://121.41.47.132:82/hello')
            .success( function( response ){
                console.log( 'success' );
                console.log( response );
            } )
            .error( function ( response ){
                console.log( 'failed', response );
            } );
    }
} );

