class AddColumnToCourse < ActiveRecord::Migration[5.2]
  def change
    add_column :courses, :program_id, :integer
  end
end
