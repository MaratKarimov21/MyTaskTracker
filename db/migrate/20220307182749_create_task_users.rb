class CreateTaskUsers < ActiveRecord::Migration[7.0]
  def change
    create_table :task_users do |t|
      t.references :user, null: false, foreign_key: true
      t.references :task, null: false, foreign_key: true

      t.timestamps
    end

    add_index :task_users, [:task_id, :user_id], unique: true
  end
end
