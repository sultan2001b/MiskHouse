class CreateStudents < ActiveRecord::Migration[5.2]
  def change
    create_table :students do |t|
      t.string :f_name
      t.string :l_name
      t.string :gender
      t.string :email
      t.string :mobile
      t.string :linkedin
      t.string :github_user
      t.string :twitter
      t.string :img
      t.string :bio

      t.timestamps
    end
  end
end
