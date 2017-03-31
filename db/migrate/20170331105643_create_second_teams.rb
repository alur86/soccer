class CreateSecondTeams < ActiveRecord::Migration[5.0]
  def change
    create_table :second_teams do |t|
      t.string :title
      t.integer :game_id

      t.timestamps
    end
  end
end
