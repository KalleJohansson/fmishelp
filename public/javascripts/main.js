require.config({
	paths:{
		'jquery'		: '/public/javascripts/jquery-1.11.0',
		'bootstrap'		: '/public/javascripts/bootstrap'
	}
});

define(['jquery', 'bootstrap'], function($, bootstrap){
	$('#foo').html(' Hello World!');
});