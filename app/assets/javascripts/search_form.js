$(document).ready(function(e) {
	$( "#twt-search-form" ).submit(function( event ) {
		showSpinner();
	});
});

function showSpinner() {
	$("#loading-spinner").show();
}

function hideSpinner() {
	$("#loading-spinner").hide();
}