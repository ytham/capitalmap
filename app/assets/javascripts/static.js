$(document).ready(function(){

	var url = window.location.pathname;
	var filename = url.match(/.*\/(.*)$/)[1];
	var icon = '<i class="icon-chevron-right icon-white"></i>';
	document.getElementById(filename).innerHTML += icon;
	$('#'+filename).parent().parent().parent().parent(".accordion-body").addClass("in");

})