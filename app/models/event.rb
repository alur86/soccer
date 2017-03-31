class Event < ApplicationRecord

belongs_to one_team_player:,  optional: true, foreign_key: 'player_id'	
belongs_to two_team_player:,  optional: true, foreign_key: 'player_id'	


end
