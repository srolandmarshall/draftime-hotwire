document.addEventListener("turbo:load", function() {

  $input = $('*[data-behavior="autocomplete"]')

  var options = {
    url: function(phrase) {
      return "/players/search.json?q=" + phrase;
    },
    getValue: "name",
  };

  $input.easyAutocomplete(options);

});


// document.addEventListener("turbolinks: load", function() {
//   var options = {
//     data: ["John", "Paul", "George", "Ringo"]
//   };
//   $('*[data-behavior="autocomplete"]').easyAutocomplete(options);
// });