class FirstTeam < ApplicationRecord


belongs_to :game,  optional: true, foreign_key: 'team_id1'	
has_many :event,	dependent:	:destroy,  class_name: 'Event', foreign_key: 'event_id'
	
end
