$(document).ready(function () {
  var organisations = [
    {id: 'dummyOrg1', name: "Dummy org 1"},
    {id: 'dummyOrg2', name: "Dummy org 2"},
    {id: 'dummyOrg3', name: "Dummy org 3"}
  ];

  $('.organisation-name').typeahead({
    source: organisations,
    autoSelect: true
  });
});
