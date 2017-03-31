class CreateTwoTeamPlayers < ActiveRecord::Migration[5.0]
  def change
    create_table :two_team_players do |t|
      t.string :first_name
      t.string :last_name
      t.integer :age
      t.integer :team_id2
      t.integer :event_id

      t.timestamps
    end
  end
end
