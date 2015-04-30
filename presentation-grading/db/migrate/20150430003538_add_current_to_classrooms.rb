class AddCurrentToClassrooms < ActiveRecord::Migration
  def change
    add_column :classrooms, :current, :boolean, null: false, default: true
  end
end
