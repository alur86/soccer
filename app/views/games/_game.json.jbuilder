json.extract! game, :id, :game_type, :game_date, :team_id1, :team_id2, :score1, :score2, :created_at, :updated_at
json.url game_url(game, format: :json)
