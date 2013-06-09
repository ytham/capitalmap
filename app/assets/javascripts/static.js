$(document).ready(function(){

	var url = window.location.pathname;
	var filename = url.match(/.*\/(.*)$/)[1];
	$(document).getElementById(filename).append('<i class="icon-chevron-right icon-white"></i>');
})
