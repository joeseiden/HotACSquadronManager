class CreatePilots < ActiveRecord::Migration[5.1]
  def change
    create_table :pilots do |t|
      t.string :callsign, null: false
      t.integer :pilot_skill, null: false, default: 2
      t.integer :total_xp, default: 0
      t.integer :current_xp, default: 0
      t.integer :mission_count, default: 0
      t.integer :user_id
      t.integer :campaign_id

      t.timestamps
    end
  end
  add_index :user_id, :campaign_id
end
