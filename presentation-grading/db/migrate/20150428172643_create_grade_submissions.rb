class CreateGradeSubmissions < ActiveRecord::Migration
  def change
    create_table :grade_submissions do |t|
      t.string :email
      t.integer :presentation_id

      t.timestamps null: false
    end
  end
end
