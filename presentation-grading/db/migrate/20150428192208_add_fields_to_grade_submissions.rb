class AddFieldsToGradeSubmissions < ActiveRecord::Migration
  def change
    add_column :grade_submissions, :appropriate_length, :integer
    add_column :grade_submissions, :design_pattern, :integer
    add_column :grade_submissions, :good_description, :integer
    add_column :grade_submissions, :good_support, :integer
    add_column :grade_submissions, :bad_description, :integer
    add_column :grade_submissions, :bad_support, :integer
    add_column :grade_submissions, :improvement, :integer
    add_column :grade_submissions, :good_agree, :integer
    add_column :grade_submissions, :bad_agree, :integer
    add_column :grade_submissions, :comments, :text
  end
end
