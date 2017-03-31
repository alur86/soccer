class CreateEvents < ActiveRecord::Migration[5.0]
  def change
    create_table :events do |t|
      t.integer :team_id
      t.integer :game_id
      t.integer :player_id
      t.integer :strikes
      t.boolean :yellow_card
      t.boolean :read_card
      t.integer :penalty_kiks
      t.integer :goal_kiks
      t.integer :corner_kicks
      t.integer :pushes

      t.timestamps
    end
  end
end
