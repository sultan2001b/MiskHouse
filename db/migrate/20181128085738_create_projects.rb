class CreateProjects < ActiveRecord::Migration[5.2]
  def change
    create_table :projects do |t|
      t.string :name
      t.string :url
      t.string :description
      t.string :language

      t.timestamps
    end
  end
end
