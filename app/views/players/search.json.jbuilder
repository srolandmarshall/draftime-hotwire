# frozen_string_literal: true

json.array!(@players) do |player|
  json.name player.lname + ', ' + player.fname
  json.id player.id
end
