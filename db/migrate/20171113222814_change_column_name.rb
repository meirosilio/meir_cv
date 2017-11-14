class ChangeColumnName < ActiveRecord::Migration[5.1]
  def change
    rename_column :experiences, :Experience_id, :experience_idd
  end
end
