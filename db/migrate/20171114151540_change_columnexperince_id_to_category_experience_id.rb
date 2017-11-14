class ChangeColumnexperinceIdToCategoryExperienceId < ActiveRecord::Migration[5.1]
  def change
    rename_column :experiences, :experience_id, :experience_category_id
  end
end
