class TwoTeamPlayer < ApplicationRecord


 belongs_to :one_team,  optional: true, foreign_key: 'team_id1'
 has_many :event,	dependent:	:destroy,  class_name: 'Event', foreign_key: 'event_id'


end
