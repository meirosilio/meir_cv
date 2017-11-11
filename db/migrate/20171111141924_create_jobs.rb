class CreateJobs < ActiveRecord::Migration[5.1]
  def change
    create_table :jobs do |t|
      t.string :name
      t.string :position
      t.string :start_date
      t.string :end_date
      t.text :description
      t.references :Experience, foreign_key: true

      t.timestamps
    end
  end
end
