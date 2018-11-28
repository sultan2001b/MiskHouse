class CreateJoinTableStudentsTags < ActiveRecord::Migration[5.2]
  def change
    create_join_table :students, :tags do |t|
      # t.index [:student_id, :tag_id]
      # t.index [:tag_id, :student_id]
    end
  end
end
