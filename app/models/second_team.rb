class SecondTeam < ApplicationRecord


belongs_to :game,  optional: true, foreign_key: 'team_id2'	
has_many :event,	dependent:	:destroy,  class_name: 'Event', foreign_key: 'event_id'


end
