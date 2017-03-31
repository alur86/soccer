class CreateGames < ActiveRecord::Migration[5.0]
  def change
    create_table :games do |t|
      t.string :game_type
      t.date :game_date
      t.integer :team_id1
      t.integer :team_id2
      t.integer :score1
      t.integer :score2

      t.timestamps
    end
  end
end
