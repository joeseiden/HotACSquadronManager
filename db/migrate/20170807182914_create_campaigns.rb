class CreateCampaigns < ActiveRecord::Migration[5.1]
  def change
    create_table :campaigns do |t|
      t.string :squad_name, null: false
      t.integer :squad_leader_id, null: false

      t.timestamps
    end
    add_index :user_id
  end
end
