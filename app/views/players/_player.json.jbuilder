json.extract! player, :id, :name, :team, :league_id, :created_at, :updated_at
json.url player_url(player, format: :json)
