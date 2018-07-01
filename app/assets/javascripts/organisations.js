$(document).ready(function () {
  $.getJSON( "api/organisations.json", function(data) {
    $('.organisation-name').typeahead({
      source: data,
      autoSelect: true
    });
  });
});
