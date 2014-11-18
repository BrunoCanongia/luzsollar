function initialize() {
	$.stellar( 'destroy' );
	$.stellar();
}

$(document).ready(initialize);
$(document).on('page:change', initialize);
