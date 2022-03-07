class CreateBlockers < ActiveRecord::Migration[7.0]
  def change
    create_table :blockers do |t|
      t.references :blocker, foreign_key: { to_table: :tasks }
      t.references :blocked, foreign_key: { to_table: :tasks }

      t.timestamps
    end

    add_index :blockers, [:blocked_id, :blocker_id], unique: true
  end
end
