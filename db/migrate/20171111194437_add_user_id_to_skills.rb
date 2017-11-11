class AddUserIdToSkills < ActiveRecord::Migration[5.1]
  def change
    add_column :skills, :user_id, :integer
    add_index :skills, :user_id
  end
end
