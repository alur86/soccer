class Team1 < ApplicationRecord


 belongs_to :game,  optional: true, foreign_key: 'team_id1'	
 has_many :scores,	dependent:	:destroy	



end
