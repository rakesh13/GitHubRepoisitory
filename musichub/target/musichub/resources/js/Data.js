angular.module('musicapp',[]);
angular.module('musicapp').controller('mycontrol',
function($scope)
{
	$scope.products=[
	                 {
	                	 
	                	 name:'Guitar',
	                	 price:200,
	                	 type:'electronic',
	                	 
	                 },
	                 {
	                	 name:'Piano',
	                	 price:200,
	                	 type:'electronic',
	                	
	                 },
	                 {
	                	 name:'Guitar',
	                	 price:200,
	                	 type:'string',
	                	 
	                 },
	                 ];
	}		
);