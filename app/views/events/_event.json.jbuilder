json.extract! event, :id, :team_id, :game_id, :player_id, :strikes, :yellow_card, :read_card, :penalty_kiks, :goal_kiks, :corner_kicks, :pushes, :created_at, :updated_at
json.url event_url(event, format: :json)
