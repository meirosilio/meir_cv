class ChangeColumnName < ActiveRecord::Migration[5.1]
  def change
    rename_column :jobs, :Experience_id, :experience_idd
  end
end
