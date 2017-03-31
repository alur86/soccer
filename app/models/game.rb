class Game < ApplicationRecord

has_many :first_team,	dependent:	:destroy,  class_name: 'FirstTeam', foreign_key: 'game_id'
has_many :second_team,	dependent:	:destroy, class_name: 'SecondTeam', foreign_key: 'game_id'

	
end
