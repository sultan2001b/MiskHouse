class CreateCourses < ActiveRecord::Migration[5.2]
  def change
    create_table :courses do |t|
      t.string :name
      t.string :img
      t.string :short_description
      t.string :long_description
      t.string :duration

      t.timestamps
    end
  end
end
