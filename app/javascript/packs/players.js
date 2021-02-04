document.addEventListener("turbo:load", function() {
  console.log("Turbo loaded")
  autoComplete()
});

const autoComplete = () => {
$input = $('*[data-behavior="autocomplete"]')

  var options = {
    url: function(phrase) {
      return "/players/search.json?q=" + phrase;
    },
      getValue: "name",
      list: {
        onSelectItemEvent: function() {
            var selectedItemValue = $("#player_id").getSelectedItemData().id;
            $("#pick_player_id").val(selectedItemValue).trigger("change");
        }
    }
  };

  $input.easyAutocomplete(options);
}
// document.addEventListener("turbo:load", function() {
//   var options = {
//     data: ["John", "Paul", "George", "Ringo"]
//   };
//   $('*[data-behavior="autocomplete"]').easyAutocomplete(options);
// });