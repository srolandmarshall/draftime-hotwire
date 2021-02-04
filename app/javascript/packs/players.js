
document.addEventListener("turbo:load", function() {
  console.log("Turbo loaded")
  playerAutoComplete();
});

document.addEventListener("turbo:before-stream-render", function(){
  console.log("before-stream-render event")
  $input = $('#player_chooser')
  $input.val('')
})

const playerAutoComplete = () => {
$input = $('#player_chooser')

  var options = {
    url: function(phrase) {
      return "/players/search.json?q=" + phrase;
    },
      getValue: "name",
      list: {
        onSelectItemEvent: function() {
            var selectedItemValue = $("#player_chooser").getSelectedItemData().id;
            $("#pick_player_id").val(selectedItemValue).trigger("change");
        }
    }
  };
  $input.easyAutocomplete(options);
}