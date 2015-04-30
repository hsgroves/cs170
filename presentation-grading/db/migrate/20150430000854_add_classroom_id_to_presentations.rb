class AddClassroomIdToPresentations < ActiveRecord::Migration
  def change
    add_column :presentations, :classroom_id, :integer
  end
end
