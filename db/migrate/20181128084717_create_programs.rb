class CreatePrograms < ActiveRecord::Migration[5.2]
  def change
    create_table :programs do |t|
      t.string :name
      t.string :img
      t.string :icon
      t.string :short_description
      t.text :long_description

      t.timestamps
    end
  end
end
