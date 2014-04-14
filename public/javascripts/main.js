require.config({
	paths: {
		'jquery'		: '/public/javascripts/jquery-1.11.0'
	   ,'bootstrap'		: '/public/javascripts/bootstrap'
	},
	shim: {
		bootstrap: ['jquery']
	}
});

define(['jquery', 'bootstrap'], function($, bootstrap){
	$('#foo').html(' Hello World!');
});