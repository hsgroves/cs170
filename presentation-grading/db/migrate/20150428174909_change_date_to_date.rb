class ChangeDateToDate < ActiveRecord::Migration
  def up
    change_column :presentations, :date, :date
  end

  def down
    change_column :presentations, :date, :datetime
  end
end
