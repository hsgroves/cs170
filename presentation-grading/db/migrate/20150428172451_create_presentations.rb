class CreatePresentations < ActiveRecord::Migration
  def change
    create_table :presentations do |t|
      t.datetime :date
      t.string :presenter_name
      t.string :topics

      t.timestamps null: false
    end
  end
end
